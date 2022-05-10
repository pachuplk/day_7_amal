#!/bin/bash
arry=(3 -2 -1)
echo "Three integers are "${arry[@]}
sum=0

for i in ${arr[@]}
do
    sum=`expr $sum + $i`
done

echo "Sum of three integers is = "$sum
