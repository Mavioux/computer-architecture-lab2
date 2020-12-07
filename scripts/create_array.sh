#!/bin/bash

# Create file dir with all the needed directories
find . -type d -iname "l1d*" > dir

# Use every directory to find the CPI status from stat.txt file
filename='dir'
n=1

touch results
echo "Bash Script that creates arrays using the arguments from the simulations with gem5." > results

spec=""

while read line; do
	
	# read each line from dir and write it to results file
	# echo "$line" >> results
	
	# grep the CPI line from stats.txt and write it to results file
	# grep -hnr "system.cpu.cpi" $line >> results

	# add the new spec folder name
	newSpec=${line%/*}     	  # trim everything past the last /
	newSpec=${newSpec##*/}    # ...then remove everything before the last / remaining
	
	# statement to check if the spec changed
	if [[ "$spec" != "$newSpec" ]]
	then
		spec=$newSpec	
		echo "" >> results
		echo "| l1_ds | l1_is | l2_s  | l1i_as | l1d_as | l2_as | cacheline | $spec _CPI |" >> results
		echo "" >> results
	fi	
	
	# find and save all the needed values
	echo "$line" | grep -Eo '=[0-9]{1,4}' | sed 's/=/| /' | tr '\n' '\t' >> results
	
	echo "" | tr '\n' '| ' >> results
	
	# grep the CPI value and save it
	grep -hnr "system.cpu.cpi" $line | grep -Eo '[0-9]{0,1}.[0-9]{3,7}' | tr '\n' ' ' >> results
	
	echo "|" >> results

	# go to the next line
	n=$((n+1))

done < $filename

rm dir

