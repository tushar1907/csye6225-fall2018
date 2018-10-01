stackname=$1
createOutput=$(aws cloudformation create-stack --stack-name $stackname --template-body file://csye6225-cf-application.json --parameters ParameterKey=stackname,ParameterValue=$stackname)

if [ $? -eq 0 ]; then
	echo "Creating Application stack..."
	aws cloudformation wait stack-create-complete --stack-name $stackname
	echo "Application Stack created successfully. Stack Id below: "

	echo $createOutput

else
	echo "Error in creation of stack"
	echo $createOutput
fi;