if [ -z "$CHANGES_FILE" ]; then
	echo "Missing environment variable CHANGES_FILE"
	exit 1
elif [ -z "$CHANGES_DB" ]; then
	echo "Missing environment variable CHANGES_DB"
	exit 1
elif [ -z "$LOGIN_PATH" ]; then
	echo "Missing environment variable LOGIN_PATH"
	exit 1
elif [ -z "$APP_DB" ]; then
	echo "Missing environment variable APP_DB"
	exit 1
fi

if [ -z "$CHANGES_HOME" ]; then
	CHANGES_HOME=.
fi

if [ ! -f $CHANGES_HOME/$CHANGES_FILE ]; then
	echo "Could not find changes file at $CHANGES_HOME/$CHANGES_FILE"
	exit 1
fi

while read CHANGE; do
	CHANGES_FILE_PATH="$CHANGES_HOME$CHANGE"
	if [ -f $CHANGES_FILE_PATH ]; then
		echo "mysql --login-path=$LOGIN_PATH changesets -s -N -e SELECT applied FROM $APP_DB WHERE file_path='$CHANGE' LIMIT 1"
		applied=`mysql --login-path="$LOGIN_PATH" changesets -s -N -e "SELECT applied FROM $APP_DB WHERE file_path='$CHANGE' LIMIT 1"`
		if [ ${#applied} -eq 1 ]; then
			echo "$CHANGE - has already been applied"
		else
			echo "Applying changeset - $CHANGE"
			echo "mysql --login-path=$LOGIN_PATH refocus -s -N -e `cat $CHANGES_FILE_PATH`"
			mysql --login-path="$LOGIN_PATH" refocus -s -N -e "`cat $CHANGES_FILE_PATH`"
			if [ $? -eq 0 ]; then
				echo "mysql --login-path=$LOGIN_PATH changesets -s -N -e INSERT INTO $APP_DB (file_path) VALUES ('$CHANGE')"
				mysql --login-path="$LOGIN_PATH" changesets -s -N -e "INSERT INTO $APP_DB (file_path) VALUES ('$CHANGE')"
				echo "Changeset successfully applied"
			else
				echo "Fatal error running changeset $CHANGE"
				exit 1
			fi
		fi
	else
		echo "File $CHANGES_FILE_PATH not found"
		exit 1
	fi

done < $CHANGES_HOME/$CHANGES_FILE
