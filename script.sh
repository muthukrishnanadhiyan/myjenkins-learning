#!/bin/bash

aws --version

if [ $? -eq  0 ]; then

echo " aws cli is installed "

else 

echo " Need to install awscli on ubnutu"

fi