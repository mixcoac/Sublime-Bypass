#!/bin/bash
# Sublime-Bypass v1
# A tool to bypass Sublime's activation process

# Kudos to maboloshi and leo
# This software is licensed under the zlib license. Please go to https://opensource.org/licenses/Zlib to learn more about it

RED="\x1B[31m"
RST="\x1B[0m"
inputMerge=merge
inputText=text

printf "Sublime-Bypass v0.2 - Sublime Text License Deactivator\n\n"
printf "${RED}Before you start, make sure you HAVE modified your /etc/hosts file as specified.\n\n${RST}"
printf "Please enter the Sublime product you're trying to crack [merge/text]\n>"
read inputUser

# Selector
if [ $inputUser == $inputText ]
then
	# Sublime Text Deactivation
	printf "\nDisabling license checks for Sublime Text\n\n"
	cd /opt/sublime_text || exit
	printf '\x48\x31\xC0\xC3'                 | dd of=sublime_text bs=1 seek=$((0x0036567C)) conv=notrunc
	printf '\x90\x90\x90\x90\x90'             | dd of=sublime_text bs=1 seek=$((0x0035BCCB)) conv=notrunc
	printf '\x90\x90\x90\x90\x90'             | dd of=sublime_text bs=1 seek=$((0x0035BCE6)) conv=notrunc
	printf '\x48\x31\xC0\x48\xFF\xC0\xC3'     | dd of=sublime_text bs=1 seek=$((0x00367171)) conv=notrunc
	printf '\xC3'                             | dd of=sublime_text bs=1 seek=$((0x003653CE)) conv=notrunc
	printf '\xC3'                             | dd of=sublime_text bs=1 seek=$((0x0034F5F0)) conv=notrunc
	printf "License checks for Sublime Text have been Disabled"
elif [ $inputUser == $inputMerge ]
then
	# Sublime Merge Deactivation
	printf "\nDisabling license checks for Sublime Merge\n\n"
	cd /opt/sublime_merge || exit
	printf '\x48\xC7\xC0\x19\x01\x00\x00\xC3' | dd of=sublime_merge bs=1 seek=$((0x003A5400)) conv=notrunc
	printf '\x90\x90\x90\x90\x90'             | dd of=sublime_merge bs=1 seek=$((0x003A7EC9)) conv=notrunc
	printf '\x90\x90\x90\x90\x90'             | dd of=sublime_merge bs=1 seek=$((0x003A7EE4)) conv=notrunc
	printf '\x48\x31\xC0\x48\xFF\xC0\xC3'     | dd of=sublime_merge bs=1 seek=$((0x003A67FE)) conv=notrunc
	printf '\xC3'                             | dd of=sublime_merge bs=1 seek=$((0x003A514E)) conv=notrunc
	printf '\xC3'                             | dd of=sublime_merge bs=1 seek=$((0x003A40D2)) conv=notrunc
	printf "License checks for Sublime Merge have been Disabled"
else
	printf "Huh, It seems you entered something other than merge or text. Try re-running this program and specify the proper product.\n"
fi