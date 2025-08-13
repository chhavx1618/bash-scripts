#! /bin/bash


# log monitor script with email alerts

#allow taking log files as input, other wise check the files directly


if [ $# -eq 0 ]; then
	echo "usage: $0 <log_file_path>"
	exit 1
fi


LOG_FILE="$1"

RECIPIENT_EMAIL="chhavi.cw.1618@gmail.com"

if [ ! -f "$LOG_FILE" ]; then 
	echo "erorr: file not found"
	exit 1
fi

echo "monitoringgggg brr brrrrr................"

#remember to add fun comments and echos, unless it is production



tail -f "$LOG_FILE" | while read -r line; do 
	if echo "$line" | grep -q " 500 "; then
		echo "500 found oh no"
		echo "in this $line" | mail -s "500 EERROR ALLLERT AHHH" "$RECIPIENT_EMAIL"
	fi
done



