#!/bin/bash
count=0
while [ 1 ]
do
num=$((RANDOM%1000))
if [ $num -lt 100 ]
then
continue
else
number[$count]=$num
(( count++ ))
if [ $count -ge 10 ]
then
break
fi
fi
done
echo "${number[*]}"
max=${number[0]}
second_max=${number[0]}
for ((i = 1; i < 10; i++)); do
if [ ${number[i]} -gt $max ]
then
second_max=$max
max=${number[i]}
fi
done
echo 'second max '$second_max
min=${number[0]}
second_min=${number[0]}
for ((i = 1; i < 10; ++i)); do
if [ ${number[i]} -lt $min ]
then
second_min=$min
min=${number[i]}
fi
done
echo 'second min '$second_min
