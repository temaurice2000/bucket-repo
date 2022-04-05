from venv import create
import boto3
import os

s3 = boto3.resource('s3')
bucket = s3.Bucket ('new-maurice-bucket-2024')

if bucket.creation_date:
    print ("The bucket exists")
else:
    os.system('aws s3api create-bucket --bucket new-maurice-bucket-2024 --create-bucket-configuration LocationConstraint=us-west-2')