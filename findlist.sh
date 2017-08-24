#!/bin/bash
#List all the contents in a dir and write the output to a file
location=$1
filename=$2

if [ -z "$location" ]
then
	echo "please provide location argument"
	exit
fi

ls $location >> dir_list.txt
echo "Script is complete and has indexed the $location"
echo "##############"
echo "Displaying contents of our $filename"
echo "###############"
cat $filename
