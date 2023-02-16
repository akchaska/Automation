#!/bin/sh

echo "Select environment for deployment: DEV | CTE"
read env
if [ $env = "CTE" ] 
then
	echo "Enter the Lambda Function Name to be updated:"
	read LAMBDA_FUNCTION
	if [ $LAMBDA_FUNCTION = "execute-sql-newleaf-cte-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/executeSql/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "graph_api_app-newleaf-cte-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/graphApiApp/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "service-bench-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/serviceBench/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "azuremaps-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/azureMaps/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "upload-files-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/s3Storage/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "send-email-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/sesApp/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "azure-authorizer-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/azureAuthorizer/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "marcone-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/marcone/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "schedule-email-sends-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/scheduledEmailSends/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "graphql_resolver-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/graphQL/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "process-files-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/s3Storage/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "service-power-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/servicePower/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	else
	echo "Enter the Correct Lambda Function Name"
	fi
	    
elif [ $env = "DEV" ] 
then
	echo "Enter the Lambda Function Name to be updated:"
	read LAMBDA_FUNCTION
	if [ $LAMBDA_FUNCTION = "execute-sql-newleaf-cte-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/executeSql/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "graph_api_app-newleaf-cte-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/graphApiApp/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "service-bench-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/serviceBench/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "azuremaps-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/azureMaps/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "upload-files-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/s3Storage/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "send-email-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/sesApp/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "azure-authorizer-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/azureAuthorizer/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "marcone-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/marcone/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "schedule-email-sends-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/scheduledEmailSends/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "graphql_resolver-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/graphQL/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "process-files-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/s3Storage/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	elif [ $LAMBDA_FUNCTION = "service-power-newleaf-pre-us-east-1" ] then
	cd /c/Users/chaaks04/Git/new-leaf-crm-backend/lambdaFunctions/servicePower/
	npm install
	DATE_STAMP=`date +"%Y%m%d"`
	DATETIME_STAMP=`date +"%A %B %d, %Y %I:%M:%S%p"`
	ZIP_FILE="$LAMBDA_FUNCTION$DATE_STAMP".zip
	zip -r "$LAMBDA_FUNCTION$DATE_STAMP" *
	/usr/bin/aws2 lambda "update-function-code" --function-name $LAMBDA_FUNCTION --zip-file fileb://$ZIP_FILE
	/usr/bin/aws2 s3 cp $ZIP_FILE s3://$S3_BUCKET
	/usr/bin/aws2 lambda publish-version --function-name $LAMBDA_FUNCTION --description "$DATETIME_STAMP Release"
	
	else
	echo "Enter the Correct Lambda Function Name"
	fi

else
	echo "Enter Correct Environment name"
fi
