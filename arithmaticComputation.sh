#!/bin/bash -x

echo "Enter Te Three Inputs ;; "
read a b c

echo $a $b $c

result=$($a+$b*$c))
echo $result

result2=$(($a*$b+$c))
echo $result2
