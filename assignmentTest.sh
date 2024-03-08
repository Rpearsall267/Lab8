#!/bin/bash


score=0
results=`grep -i -E "DogCreator" Dog.java`
if [ -n "$results" ] 
then 
((score++))
fi
echo "$score"
results=`grep -i -E "dog" Dog.java`
if [ -n "$results" ]
then
((score++))
fi
echo "$score"
if [ $score == 2 ]
then
echo "It passed"
else 
echo "fail"
fi
