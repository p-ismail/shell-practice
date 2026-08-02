#!/bin/bash


NUM1=100
NUM2=200

echo "sum is $(($NUM1+$NUM2))"

#Array

FRUITS=("mango","apple","banana")

echo "Fruits are: ${FRUITS[@]}"
echo "first fruit is: ${FRUITS[0]}"
echo "second fruit is: ${FRUITS[1]}"
echo "Third fruit is: ${FRUITS[2]}"