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
	echo "Invalid Option"
	echo "Usage: $0 [-c holder] [-f holder]"
	echo " -c -f are required."
	exit 1
}

# if the user desires to use $0 --help
if [[ $1 == "--help" ]]
then
	usage
fi


# Getopts while loop
while getops ":c:f:" opt
do 
	case $opt in
		c) holder=$OPTARG #first opt
			;;
		f) holder=$OPTARG #second opt
			;;
		/?)
			usage
			;;
	esac
done


#IF statement to test if parameters are set.
if [[ -c $holder ]] || [[ -f $holder ]]
then 
	usage
fi





exit 0

