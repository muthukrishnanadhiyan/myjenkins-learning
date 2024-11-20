#!/bin/bash

aws --version &> /dev/null/
 
if [ $? -eq  0 ]; then

echo " aws cli is installed "

users=("muthu" "harish" "indhumathi")

for user in "${users[@]}"; do

if id "$user" &> /dev/null; then

echo " user already exists"

else
   echo " need to create a user"
   useradd -m "$user" -s /bin/bash

   fi
   done

   else
     echo "AWS CLI is not installed. Installing AWS CLI on Ubuntu"
     sudo apt-get update
  sudo apt-get install -y awscli
  
  echo "AWS CLI installed successfully."
fi
