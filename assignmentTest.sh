#!/bin/bash


score=0
results=`grep -i -E "class dogcreator" Dog.java`
if [ -n "$results" ] 
then 
((score++))
fi
echo "$score"

results=`grep -i -E "class dog" Dog.java`
if [ -n "$results" ]
then
((score++))
fi

results=`grep -i -E "dog()" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi 

results=`grep -i -E "tostring()" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi

results=`grep -i -E "bark()" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi

results=`grep -i -E "getname" Dog.java`
if [ -n "$results" ]
then
((score++))
fi

results=`grep -i -E "getbreed" Dog.java`
if [ -n "$results" ]
then
((score++))
fi

results=`grep -i -E "getage" Dog.java`
if [ -n "$results" ]
then
((score++))
fi

results=`grep -i -E "getfurcolor" Dog.java`
if [ -n "$results" ]
then
((score++))
fi

results=`grep -i -E "getservicedog" Dog.java`
if [ -n "$results" ]
then
((score++))
fi

results=`grep -i -E "setname" Dog.java`
if [ -n "$results" ]
then
((score++))
fi

results=`grep -i -E "setage" Dog.java`
if [ -n "$results" ]
then
((score++))
fi

results=`grep -i -E "setfurcolor" Dog.java`
if [ -n "$results" ]
then
((score++))
fi

results=`grep -i -E "setbreed" Dog.java`
if [ -n "$results" ]
then
((score++))
fi

results=`grep -i -E "setservicedog" Dog.java`
if [ -n "$results" ]
then
((score++))
fi






#javac Dog.java
#java DogCreator > output.txt



echo "$score"
if [ $score -gt 1 ]
then
echo "It passed"
else 
echo "fail"
fi
