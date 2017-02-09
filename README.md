# House-Tullys

# homework Assignment 3 Group Project House Tullys
# authors Micheal Brewer and Jeremy Johnson
# cs3030 Hugo valle

# The purpose of these scripts is to pull the file presidents.csv and sort out what presidents served during or after the 1900s. displaying their name start date and end date of their presidencies. 

# Script usage:
#
# House_Tullys_hw3.sh  combines the .sed and .awk file
# $ bash House_Tullys_hw3.sh [-a House_Tullys_hw3.awk]  [-s House_Tullys_Hw3.sed]  [-i president.csv]

#What each file does:

# The .sh file will call the .sed and .awk and .csv file. 

# The .sed file changes the formats of the .csv file by replacing the "/" to "." in the dates. 

# The .awk file splits the data in the .csv file by the "," delimiter.
# the file then matches data in the $4 place holder that has a 4 digit number using "/" as the delimiter and stores it in an array.
# it will then compare everything in the array to the date 1900 and greater. Then print the Presidents name, start date of thier presidancy and the end date of their presidancy. 
