#! /bin/bash
aws cloudformation update-stack --stack-name $1 --region us-east-1 --template-body file://$2 --parameters file://$3
