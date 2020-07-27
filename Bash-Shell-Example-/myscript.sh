#! /bin/bash

#Echo Command
echo "Hello"

#VAriables
#uppercase by convention
#letters,Numbers and underscores
NAME="Nancy"
#echo "My name is ${NAME}"

#User input 
#read -p "Enter your name :" NAME
#echo " Hello ${NAME} , Nice to meet you!"

#if Statement
#if [ ${NAME}  == "Nancy" ]
#then
#echo "Your NAme is Nancy"
#fi

#if else Statement
#if [ ${NAME}  == "Nancy" ]
#then
#echo "Your NAme is Nancy"
#else
#echo "Your name is not Nancy"
#fi

#Else if Statement
# if [ ${NAME}  == "Nancy" ]
# then
# echo "Your NAme is Nancy"
# elif [${NAME} == "NAN" ]
# then
#   echo "Your NAme is NAN"
# else
# echo "Your name is not Nancy Or NAN"
# fi


# #Comparison
# NUM1=34
# NUM2=5

# if [ $NUM1 -gt $NUM2 ]
# then 
#    echo "$NUM1 is greater than $NUM2"
# else
#    echo "$NUM1 is less than $NUM2"
# fi


# FILE="text.txt"
# if [ -f "$FILE" ]
# then
#  echo "$FILE is a file"
# else
#  echo "$FILE is not a file"
# fi

#Case statement
# read -p "Are you Over 21 ? YES or NO" ANS
# case "$ANS" in
# [yY] | [yY][eE][sS])
# echo "You can have a drink "
# ;;
# [nN] | [nN][oO])
# echo "NO!"
# ;;
# *)
# echo "Please enter yes or no!"
# ;;
# esac

select opt in Addition Substraction Division Quit
do
 case $opt in 
 Addition)
   read -p "Enter A " a 
   read -p "Enter  B " b 
   echo "Addition of two no : $(($a+$b)) "
   ;;
 Substraction)
   read -p "Enter A " a 
   read -p "Enter  B " b 
   echo "Addition of two no : $((a-b)) "
   ;;
 Division)
   read -p "Enter A " a 
   read -p "Enter  B " b 
   echo "Addition of two no : $((a/b)) "
   ;;
  Quit)
  echo "Thank You!"
  exit 0
  ;;
  *)
  echo "Invalid"
  ;;
  esac    
done
  
    


# #Simple For Loop
# NAMES="Alice John Buck Sharon"
# for NAME in $NAMES
#  do
#   echo "HEllo $NAME"
#  done

#For loop to rename files
# FILES=$(ls *.txt)
# NEW="new"

# for FILE in $FILES
#  do 
#    echo "Renaming $FILE to new-$FILE"
#    mv $FILE $NEW-$FILE
#   done 


#WHIle Loop - read line by line 

# LINE=1
# while read -r CURRENT_LINE
#  do 
#    echo " $LINE : $CURRENT_LINE"
#    ((LINE++))
# done < "./new-1.txt"


# #Function

# function sayHello(){
#    echo "Hello !"
# }

# sayHello

#Function with Parameters
function greet(){
    echo "HEllo, I am  $1  and I am $2"
}
 
 greet "Nancy" "29"


 #Create folder and write to a file 

 mkdir hello
 touch "hello/world.txt"
 echo "Hello World " >> "hello/world.txt"
 echo "Created hello/world.txt"

#seq will produce sequence of numbers
#seq start end 
#seq start step end 
for i in $(seq 10)
do 
  echo " value is $i"
  done
#brace is another way will produce sequence of numbers
#echo {start end} 
#echo  {start end step}  
echo {1..10..2} 
#arithmetic operations (())
  echo $((3+5))


  #How to get command line arguments if its not given then it will not execute
  
cmd_line_args=$#
if[$cmd_line_args -eq 2]
then
  x=$1
  y=$2
  result=$(($x +$y))
  echo " The result is : ${result}" 
fi