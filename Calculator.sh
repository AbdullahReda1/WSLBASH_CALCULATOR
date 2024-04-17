#!/bin/bash

echo "1.ADD"
echo "2.SUB"
echo "3.MUL"
echo "4.DEV"

read -p "Enter Your Operation: "	OP
read -p "Enter 1st Number: "		X
read -p "Enter 2nd Number: "		Y

case $OP in
  1)res=`echo $X + $Y | bc`
  ;;
  2)res=`echo $X - $Y | bc`
  ;;
  3)res=`echo $X \* $Y | bc`
  ;;
  4)res=`echo "$X / $Y" | bc`
  ;;
esac

echo "Result : $res"

echo "you will find Results in  History file called History_Calculator_file"
touch "History_Calculator_file"

case $OP in
  1) echo "Addition Result :       $X + $Y =  $res  "  >> "History_Calculator_file"
  ;;
  2) echo "Substraction Result :   $X - $Y =  $res  "  >> "History_Calculator_file"
  ;;
  3) echo "Multiblication Result : $X * $Y =  $res  "  >> "History_Calculator_file"
  ;;
  4) echo "Division Result :       $X / $Y =  $res  "  >> "History_Calculator_file"
  ;;
esac
