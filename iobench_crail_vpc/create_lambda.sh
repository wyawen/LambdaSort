#!/bin/bash -e

aws lambda create-function \
    --function-name iobench_crail_vpc \
    --region us-west-2 \
    --zip-file fileb://deploy.zip \
    --role arn:aws:iam::562930434285:role/pywren_exec_role_1 \
    --handler iobench.lambda_handler \
    --runtime python2.7 \
    --timeout 30 \
    --memory-size 3008 \
    --vpc-config SubnetIds=subnet-2f940275,SecurityGroupIds=sg-aadd03d4



