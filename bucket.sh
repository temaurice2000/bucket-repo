#!/bin/bash

echo "This scritp will create a bucket after a push in the remote repo"

# first the script will check wether the bucket exists already
Date=$(date | awk '{print $4}' | sed 's/:/-/g')
exist=$(aws s3api head-bucket --bucket new-maurice-bucket-2022 2>&1 || true)
if [ -z "$exist" ]; then 
   echo "This bucket exists"
else
    echo "This bucket will be created with the name new-maurice-bucket-2022"
    aws s3api create-bucket --bucket new-maurice-bucket-$Date --create-bucket-configuration LocationConstraint=us-west-2
fi 
echo "Thank you everyone"
