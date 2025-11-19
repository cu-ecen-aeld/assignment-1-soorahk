#!/bin/sh


full_str="report.2025.01.pdf"


echo $full_str 

sub_str="${full_str%%.*}"

sub1="${full_str%.*}"
echo $sub1

echo "$sub_str \n"
