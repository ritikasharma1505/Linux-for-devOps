#!/bin/bash

a=300
b=700
c=90

if [[ $a -gt $b && $a -gt $c ]]
then
 echo "A is greatest"
elif [[ $b -gt $a && $b -gt $c ]]
then
 echo "B is greatest"
else
 echo "C is greatest"
fi