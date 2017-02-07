#!/bin/bash - 
#===============================================================================
#
#          FILE: House_Tullys_hw3.sh
# 
#         USAGE: ./House_Tullys_hw3.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Micheal Brewer (), mbrewerramirez@mail.weber.edu
#				 Jeremy Johnson , 
#  ORGANIZATION: 
#       CREATED: 02/07/2017 15:51
#      REVISION:  ---
#===============================================================================

#set -o nounset                  # Treat unset variables as an error


# how the script is suppose to be used.
usage()
{
	echo "Missing Arguments"
	echo "Usage: ./$0 [-a awksrc] [-s sedsrc] [-i inputFile]"
	echo " -a -s -i are required."
	exit 1
}

# if the user desires to use $0 --help
if [[ $1 == "--help" ]]
then
	usage
fi


# Getopts while loop
while getopts ":a:s:i:" opt
do 
	case $opt in
		a) AWK=$OPTARG #awk file to be used
			;;
		s) SED=$OPTARG #sed file to be used
			;;
		i) file=$OPTARG # file the user wants to change
			;;
		/?)
			usage
			;;
	esac
done


#IF statement to test if parameters are set.
if [[ -z $AWK ]] || [[ -z $SED ]] || [[ -z $file ]]
then 
	usage
fi









exit 0

