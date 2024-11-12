#!/bin/bash

user_add()

{
USER=$1
PASS=$2

useradd -m -p $PASS $USER && echo "User added successfully !!!"

}

# MAIN

user_add dev dev@123

# run command : sudo ./user-add.sh  {required super user privilege, to add users}
# run command : cat /etc/passwd     { check user added in this file path}
