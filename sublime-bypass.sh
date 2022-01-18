#!/bin/bash
# Sublime-Bypass v2
# A tool to bypass Sublime's activation process

# Kudos to maboloshi. leo and jowinjohnchemban.
# This software is licensed under the Unlicense. Please go to https://unlicense.org to learn more about it.

RED="\x1B[31m"
RST="\x1B[0m"
inputMerge=merge
inputText=text

printf "\nSublime-Bypass v2\n\n"
printf "${RED}Before you start, make sure you HAVE modified your /etc/hosts file as specified earlier.\n\n${RST}"
printf "Please enter the Sublime product you're trying to crack [merge/text]\n>"
read inputUser

# Function to select the Sublime product (either Merge or Text)
if [ $inputUser == $inputText ]
then
	# Disable Text's License Checks
	printf "\nDisabling license checks for Sublime Text\n\n"
	cd /opt/sublime_text || exit
	printf '\x48\x31\xC0\xC3'                 | dd of=sublime_text bs=1 seek=$((0x00385492)) conv=notrunc
	printf '\x90\x90\x90\x90\x90'             | dd of=sublime_text bs=1 seek=$((0x0037B675)) conv=notrunc
	printf '\x90\x90\x90\x90\x90'             | dd of=sublime_text bs=1 seek=$((0x0037B68B)) conv=notrunc
	printf '\x48\x31\xC0\x48\xFF\xC0\xC3'     | dd of=sublime_text bs=1 seek=$((0x00386F4F)) conv=notrunc
	printf '\xC3'                             | dd of=sublime_text bs=1 seek=$((0x00385156)) conv=notrunc
	printf '\xC3'                             | dd of=sublime_text bs=1 seek=$((0x0036EF50)) conv=notrunc
	printf "License checks for Sublime Text have been Disabled"
elif [ $inputUser == $inputMerge ]
then
	# Disable Merge's License Checks
	printf "\nDisabling license checks for Sublime Merge\n\n"
	cd /opt/sublime_merge || exit
	printf '\x48\xC7\xC0\x19\x01\x00\x00\xC3' | dd of=sublime_merge bs=1 seek=$((0x003C6A3C)) conv=notrunc
	printf '\x90\x90\x90\x90\x90'             | dd of=sublime_merge bs=1 seek=$((0x003C95A1)) conv=notrunc
	printf '\x90\x90\x90\x90\x90'             | dd of=sublime_merge bs=1 seek=$((0x003C95BC)) conv=notrunc
	printf '\x48\x31\xC0\x48\xFF\xC0\xC3'     | dd of=sublime_merge bs=1 seek=$((0x003C7E85)) conv=notrunc
	printf '\xC3'                             | dd of=sublime_merge bs=1 seek=$((0x003C6788)) conv=notrunc
	printf '\xC3'                             | dd of=sublime_merge bs=1 seek=$((0x003C572C)) conv=notrunc
	printf "License checks for Sublime Merge have been Disabled"
else
	printf "Huh, It seems you entered something other than merge or text. Try re-running this program and specify the proper product.\n"
fi