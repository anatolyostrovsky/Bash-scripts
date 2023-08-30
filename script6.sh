#!/bin/bash

myFunction()
{
	echo "This Function name is $0"
	echo "First parameter is $1"
	echo "Second parameter is $2"
	echo "$1 $2"
}
myFunction Hello World

myFunction2()
{
        echo "Function text!"
        echo "Num1 = $1"
        echo "Num2 = $2"
        sum=$(("$1+$2"))
}

myFunction2 55 33
echo "sum = $sum"
