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
echo  ${Array[@]}

for (( i=0;i<${#Array[@]};i++ ))
do
	for (( j=0;j<${#Array[@]};j++ ))
	do
	if [ ${Array[i]} -gt ${Array[j]} ]
	then
	temp=${Array[i]}
	Array[i]=${Array[j]}
	Array[j]=$temp
	fi
	done
done
echo "Descending Order" ${Array[@]}
