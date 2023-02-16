#!/bin/bash

#Script will zip the deployment package, upload a lambda function to a specified s3 bucket. The script will then deploy the function to lambda (node version)

echo -n "Enter the name of the files you wish to zip (eg. lambdaFunction.js node_modules): "
read FilesToBeZipped
echo -n "Enter the name of the output zip file (eg. lambdaFunction): "
read ZipFileName
echo -n "Enter the name of the s3 bucket you wish to upload to: "
read BucketName
echo -n "Enter the name of your lambda function: "
read FunctionName

#Zip the content of Lambda
zip -r "$ZipFileName.zip" $FilesToBeZipped

#Copy zip file to S3 bucket.
#aws s3 cp my-function.zip s3://my-bucket
aws s3api put-object --bucket $BucketName --key "./$ZipFileName.zip" --body "./$ZipFileName.zip"

#upload zip file to lambda from S3 bucket.
aws lambda update-function-code --function-name $FunctionName --s3-bucket $BucketName --s3-key $FunctionName
