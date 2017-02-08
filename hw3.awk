#! bin/awk

# note $4 is the took office
# $5 is the left office


BEGIN{FS="," } #comma delimiter
{
# print $4;  
match($4, /[0-9]{4}/, arr);
#print arr[0];

if (arr[0] >= 1900)
	print arr[0]
}


