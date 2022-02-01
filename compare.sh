#!/bin/bash
# Author: Avanade
# Comparing numbers

read -p "Type the first number: " N1
read -p "Type the second number: " N2

if [ ${N1} -eq ${N2} ]; then
   echo "The typed numbers are equals (${N1})";
   exit 0;
fi

if [ ${N1} -gt ${N2} ]; then
   echo "The greatest typed number is: ${N1}";
   exit 0;
fi

if [ ${N1} -lt ${N2} ]; then
   echo "The greatest typed number is: ${N2}";
   exit 0;
fi

echo "Houston, we have a problem!!!"