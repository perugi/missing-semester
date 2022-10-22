#!/usr/bin/env bash

./rare_fail.sh &> rare_fail_output
n=1

while [[ $? -eq 0 ]]
do
	n=$((n+1))
	./rare_fail.sh &>> rare_fail_output	
done

cat rare_fail_output
echo "Number of runs: $n"
