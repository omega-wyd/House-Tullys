# House Tullys

Homework Assignment 3 Group Project  
Authors: Micheal Brewer and Jeremy Johnson  
CS 3030 &ndash; Hugo Valle

The purpose of these scripts is to pull the file `presidents.csv` and sort out what presidents served during or after the 1900s, displaying their names and the start and end dates of their presidencies. 

## Script usage

`House_Tullys_hw3.sh` combines the `.sed` and `.awk` files.

```bash
    $ bash House_Tullys_hw3.sh -a House_Tullys_hw3.awk -s House_Tullys_hw3.sed -i presidents.csv
```

## What each file does

- The `.sh` file will call the `.sed` file with the `.csv` file as input. It will then use the ouput from `sed` as input to the `.awk` file. The output will be stored in `20CenturyPresidents.txt`.

- The `.sed` file changes the format of the `.csv` file by replacing the `/` with `.` in the dates. 

- The `.awk` file splits the data in the `.csv` file by the `,` delimiter.
  The file then matches data in the `$4` placeholder that has a 4 digit number using `/` as the delimiter and stores it in an array.
  It will then compare everything in the array to the date 1900 and greater. Then it will print the president's name, the start date of thier presidency, and the end date of their presidency. 

