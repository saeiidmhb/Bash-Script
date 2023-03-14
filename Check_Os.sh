#!/bin/bash

OS1="debian"
OS2="centos"
CHECK=$(cat /etc/os-release | grep -i id_like | tr '[:upper:]' '[:lower:]')
if [[ $CHECK == *$OS1* ]]
then
    echo "It's Debian."
elif [[ $CHECK == *$OS2* ]]
then
    echo "It's Centos."
else
    echo "Didn't recognize the os."
fi
