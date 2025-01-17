#!/bin/bash

######################################
# Author: Sneha
# Date: 25-July
#
#
# Version : v1
#
#This script give aws resourse usage report
######################################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker

# list ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resourceTracker

# list aws lambda functions
echo "Print list of lambda functions"
aws lambda list-functions > resourceTracker

# list IAM users
echo "Print list of IAM users"
aws iam list-users > resourceTracker

