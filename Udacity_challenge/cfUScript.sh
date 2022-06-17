#! /bin/bash
aws cloudformation update-stack --stack-name $1 --region $2 --template-body file://$3 --parameters file://$4