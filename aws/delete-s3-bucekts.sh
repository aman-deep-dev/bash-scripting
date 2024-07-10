#!/bin/bash

buckets=$(aws s3 ls | awk '{print $3}')
for bucket in $buckets; 
do
    echo "Deleting all objects in bucket: $bucket"
    # Delete all objects in the bucket
    aws s3 rm s3://$bucket --recursive
    echo "Deleting buckets: $bucket"
	# aws s3api delete-bucket --bucket $bucket
done