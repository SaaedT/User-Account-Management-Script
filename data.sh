#!/bin/bash

read -p "Enter your user name: " user
read -p "Enter your full-nqme: " name

INFO=$user,$name

read -p "please, Confirm that you have entered the correct informatios. Is everything correct? [y/n]" input

case $input in
        N | n)
                exit
                ;;
        Y | y)
                echo $INFO >> employee.csv
                ;;
        *)
                exit
                ;;
esac

echo "Your data has been stored successfuly "
