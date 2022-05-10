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
for (( i = 0; i < 9 ; i++ ))
do
for (( j = $(($i+1)); j < 10; j++ ))
do
if [ ${number[$i]} -gt ${number[$j]} ]
then
t=${number[$i]}
number[$i]=${number[$j]}
number[$j]=$t
fi
#echo $t
done
done
echo "${number[*]}"
echo 'second largest : '${number[8]}
echo 'second smallest : '${number[1]}
