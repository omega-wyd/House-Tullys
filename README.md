# House-Tullys

# homework Assignment 3 Group Project House Tullys
# authors Micheal Brewer and Jeremy Johnson
# cs3030 Hugo valle


#Create a bash script that accomplish the following items: 1. For this homework, we will use the data from the presidents.csv file. This file is located in
#this location: /home/hvalle/submit/cs3030/files/presidents.csv a. $ cp /home/hvalle/submit/cs3030/files/presidents.csv $PWD2. Create a sedsrc file following our naming convention to change the date format in the
#presidents.csv file from dd/mm/yyy to dd.mm.yyy. Note: be aware that the day and month numbers could be one digit.
#a. Test your code as follows: $ sed -f firstLast_hw3.sed presidents.csv.  Make sure
#you are updating the date fields correctly.
#3. Create an awk script following our naming convention which looks in the president.csv file and displays those presidents who served in the year 1900 and after.
#a. Take into account the field separator FS = ",". b. Also you can use the substr function within awk to extract substring of a given field, in this case the year. c. Test your code as follows: $ awk -f firstLast_hw3.awk presidents.csv 
#4. Finally, write a shell script that wraps everything together:
#a. Your script should take three arguments: sedsrc, awksrc, and dataInputFile, with the following options:
#i. –a for your awk file ii. –s for your sed file iii. –i for your input file
#b. Your sed call (stept 2) should send the output to awk c. Your awk call (step 3), should take input from the previous step. d. Finally, redirect your final output to a new output file. e. Make sure you include a –help function, and check for argument numbers
