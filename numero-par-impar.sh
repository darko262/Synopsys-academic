#!/bin/bash


read -p  "Introduce un numero:" NUM

RESTO=$(($NUM%2))

if [ $RESTO -eq 0 ];then
	echo "El numero es par "
else
	echo "El numero es impar "
fi
