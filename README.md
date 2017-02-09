# House Tullys

Homework Assignment 3 Group Project  
Authors: Micheal Brewer and Jeremy Johnson  
CS 3030 &ndash; Hugo Valle

The purpose of these scripts is to pull the file `presidents.csv` and sort out what presidents served during or after the 1900s, displaying their names and the start and end dates of their presidencies. 

## Script usage

`House_Tullys_hw3.sh` combines the `.sed` and `.awk` files.

```bash
$ bash House_Tullys_hw3.sh -a <awksrc> -s <sedsrc> -i <inputfile>
```

With the names of our scripts, this can be run as

```bash
$ bash House_Tullys_hw3.sh -a House_Tullys_hw3.awk -s House_Tullys_hw3.sed -i presidents.csv
```

## What each file does

- The `House_Tullys_hw3.sh` file will call the `.sed` file with the `.csv` file as input. It will then use the ouput from `sed` as input to the `.awk` file. The output will be stored in `20CenturyPresidents.txt`.

- The `House_Tullys_hw3.sed` file changes the format of the `.csv` file by replacing the `/` with `.` in the dates. 

- The `House_Tullys_hw3.awk` file splits the data in the `.csv` file by the `,` delimiter.
  The file then matches data in the `$4` and `$5` placeholders (the dates) that have a 4 digit number and stores it in an array.
  It will then compare the first element of the array to the date 1900 and greater. Then it will print the president's name, the start date of thier presidency, and the end date of their presidency. 

