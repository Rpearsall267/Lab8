#!/bin/bash


score=0
results=`grep -i -E "class dogcreator" Dog.java`
if [ -n "$results" ] 
then 
((score++))
fi


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

results=`grep -i -E "dogone = new" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi

results=`grep -i -E "dogtwo = new" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi

results=`grep -i -E "dogthree = new" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi

results=`grep -i -E "dogone.tostring()" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi

results=`grep -i -E "dogtwo.tostring()" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi

results=`grep -i -E "dogthree.tostring()" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi

results=`grep -i -E "dogone.bark()" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi

results=`grep -i -E "dogtwo.bark()" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi

results=`grep -i -E "dogthree.bark()" Dog.java`
if [ -n "$results" ]
then 
((score++))
fi

javac Dog.java
java DogCreator > output.txt

if [ -n "output.txt" ]
then 
((score++))
fi

echo "Java Program needs a score of 25 or greater to pass"
echo 

if [ "$score" -gt 24 ]
then
echo "Your Program passed with a score of: $score"
else
echo "Your Program did not pass with a score of: $score"
fi

echo

echo "The results of running your java program is"
echo
cat output.txt
