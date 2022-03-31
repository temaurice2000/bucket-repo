#!/bin/bash

echo "This scritp will create a bucket after a push in the remote repo"

# first the script will check wether the bucket exists already

exist=$(aws s3api head-bucket --bucket new-maurice-bucket-2025 2>&1 || true)
if [ -z "$exist" ]; then 
   echo "This bucket exists"
else
    echo "This bucket will be created with the name new-maurice-bucket-2025"
    aws s3api create-bucket --bucket new-maurice-bucket-2025 --create-bucket-configuration LocationConstraint=us-west-2
fi 
