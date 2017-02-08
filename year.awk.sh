awk -F, '{ print match(, /[0-9]{4}/, arr); print arr[0]}' presidents.csv

