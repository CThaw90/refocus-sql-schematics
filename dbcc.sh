end () {
	mysqladmin shutdown
	exit $1
}

if [ -z "$CHANGES_FILE" ]; then
	echo "Missing environment variable CHANGES_FILE"
	mysqladmin shutdown
	end "1"
elif [ -z "$DB_HOST" ]; then
	echo "Missing environment variable DB_HOST"
	end "1"
elif [ -z "$DB_USER" ]; then
	echo "Missing environment variable DB_USER"
	end "1"
elif [ -z "$DB_PASS" ]; then
	echo "Missing environment variable DB_PASS"
	end "1"
elif [ -z "$CHANGES_DB" ]; then
	echo "Missing environment variable CHANGES_DB"
	end "1"
elif [ -z "$APP_DB" ]; then
	echo "Missing environment variable APP_DB"
	end "1"
fi

if [ -z "$CHANGES_HOME" ]; then
	CHANGES_HOME=.
fi

if [ ! -f $CHANGES_HOME/$CHANGES_FILE ]; then
	echo "Could not find changes file at $CHANGES_HOME/$CHANGES_FILE"
	end "1"
fi

export MYSQL_PWD=$DB_PASS
while read CHANGE; do
	CHANGES_FILE_PATH="$CHANGES_HOME$CHANGE"
	echo $CHANGES_FILE_PATH
	if [ -f $CHANGES_FILE_PATH ]; then
		applied=`mysql -h "$DB_HOST" -u"$DB_USER" changesets -s -N -e "SELECT applied FROM $APP_DB WHERE file_path='$CHANGE' LIMIT 1"`
		echo $applied
		if [ ${#applied} -eq 1 ]; then
			echo "$CHANGE has already been applied"
		else
			echo "Applying changeset - $CHANGE"
			mysql -h "$DB_HOST" -u"$DB_USER" "$APP_DB" -s -N -e "`cat $CHANGES_FILE_PATH`"
			mysql -h "$DB_HOST" -u"$DB_USER" changesets -s -N -e "INSERT INTO $APP_DB (file_path) VALUES ('$CHANGE')"
		fi
	else
		echo "File $CHANGES_FILE_PATH not found"
	fi

done < $CHANGES_HOME/$CHANGES_FILE

end "0"
