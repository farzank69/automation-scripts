#! /bin/bash
#
#######################
# Author: Farzan
# Date: 20-11-2025
#
# Version: v1
#
# This will report the AWS resource usage
# #####################
#
set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# list s3 buckets
echo "Print all s3 buckets"
aws s3 ls > resource_tracker

# list EC2 Instances
echo "Print list Ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resource_tracker

# list lambda
echo "Print list of lambda functions"
aws lambda list-functions

# list IAM users
echo "Print list of IAM users"
aws iam list-users