#!/bin/sh
#Assignment1

if [ $# -lt 2 ]
then
        echo "usage ./script.sh directory string_name"
        exit 1
fi


filedir=$1
str=$2
fil_no=0
match=0
match_no=0

cd $filedir
if [ $? -ne 0 ]
then
      echo "file does not exist\n"
      exit 1
fi

pwd

for file in $(find . -type f ); do
    match=$(grep -c "$str" "$file" 2>/dev/null || echO 0 ) 
    if  [ $match -gt 0 ]
    then
       fil_no=$((fil_no + 1))
    fi
    match_no=$((match_no + match))
done

echo "No of files is $fil_no and no. of matches is $match_no" 
