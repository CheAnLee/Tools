#!/bin/sh
#
#  Use to change the privilege of folders with assigning directory
#  to 755.
#  Example: ./run.sh FOLDER_IN_CURRENT_DIR

if [ -z "$1" ]
then
	echo "No directory applied"
	exit 0
fi

arr=`find ./$1/ -type d -name '*'`

count=0

for i in ${arr}
do
	echo "chmod 755 ${i}"
	chmod 755 ${i}
	count=$((count+1))
done

echo "Total Folder(s) be changed: "${count}
