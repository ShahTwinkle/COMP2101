#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

#variables and data gathering
#-----------------------------
#modified to get input from the user
#firstnum=5
#secondnum=2
read -p "give me a number:" firstnum
read -p "give me another number:" secondnum
#-----------------------------

#Calculations
#-----------------------------
sum=$((firstnum + secondnum))
diff=$((firstnum - secondnum))
multiplication=$((firstnum * secondnum))
dividend=$((firstnum / secondnum))
modulus=$((firstnum % secondnum))
power=$((firstnum ** secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
#-----------------------------



#Report generation
#-----------------------------
cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum minus $secondnum is $diff
$firstnum multiply by $secondnum is $multiplication
$firstnum divided by $secondnum gives $dividend with a remainder of $modulus
  - More precisely, it is $fpdividend
$firstnum to the power $secondnum is $power
EOF
#-----------------------------
