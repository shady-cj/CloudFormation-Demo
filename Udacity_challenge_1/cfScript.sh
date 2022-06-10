#! /bin/bash
aws cloudformation create-stack --stack-name $1 --region $2 --template-body file://$3