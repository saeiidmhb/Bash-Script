#!/bin/bash

OS1="debian"
OS2="centos"
CHECK=$(cat /etc/os-release | grep -i id_like | tr '[:upper:]' '[:lower:]')
if [[ $CHECK == *$OS1* ]]
then
    echo "It's Debian."
    apt update
elif [[ $CHECK == *$OS2* ]]
then
    echo "It's Centos."
    yum update
else
    echo "Didn't recognise the os."
fi
