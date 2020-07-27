#! /bin/bash

echo "Welcome to Guess Number Game"
Number=$RANDOM
No_os_changes=1

for (( ;; ))
do

read -p "Enter your $No_os_changes, Guess :" Guess_Number
if [ $Number -eq $Guess_Number ]
then
 echo "Your Guess is right!"
 exit 0
 else 
 echo "Its Wrong !! Try Again"

 if [ $Guess_Number -ge $Number ]
 then
    echo "Your guess is Greater than the number $Number"
else
   echo "your Guess is Lesser than the number "
 fi

fi
No_os_changes=$((No_os_changes+1))

done
