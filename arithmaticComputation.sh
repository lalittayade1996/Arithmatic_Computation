#!/bin/bash -x

echo "Enter Te Three Inputs ;; "
read a b c

declare -A result

result[1]=$(($a+$b*$c))
echo $result[1]

result[2]=$(($a*$b+$c))
echo $result[2]

result[3]=$(($c+$a/$b))
echo $result[3]

result[4]=$(($a%$b+$c))
echo $result[4]

Dictonary=(${result[@]})
echo "Results of all comutation :" ${result[@]}

Array=(${Dictonary[@]})
echo  ${Array[*]}
