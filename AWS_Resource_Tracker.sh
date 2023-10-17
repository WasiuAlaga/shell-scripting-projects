#!/bin/bash
###################
# Author: Wasiu
#Date: 16-Oct
#
# version: v1
#
# This script willl report the AWS resource usage
####################################

set -x

# AWS s3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# list s3 buckets
echo "Print list of s3 buckets"

aws s3 ls

# list EC2 instance

#echo "Print list of EC2 Instances"
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list AWS lambda
echo "Print list of lambda function"

aws lambda list-functions

# list IAM users
echo "Print list of IAM users"
aws iam list-users
