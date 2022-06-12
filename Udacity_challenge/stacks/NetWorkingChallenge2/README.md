# Networking Challenge 2

    -> Creates a VPC
    -> It will accept the IP Range -also known as CIDR block- from an input parameter
    -> Creates and attaches an Internet Gateway to the VPC
    -> Creates Two Subnets within the VPC with Name Tags to call them “Public” and “Private”
    -> These will also need input parameters for their ranges, just like the VPC.
    -> The Subnet called “Public” needs to have a NAT Gateway deployed in it
    -> This will require you to allocate an Elastic IP that you can then use to assign it to the NAT Gateway.
    -> The Public Subnet needs to have the MapPublicIpOnLaunch property set to true. Use this reference for help.
    -> The Private Subnet needs to have the MapPublicIpOnLaunch property set to false.
    -> Both subnets need to be /24 in size.
    -> If you need assistance with IP math, you can use a subnet calculator such as this one.
    -> You will need 2 Routing Tables, one named Public and the other one Private
    -> Assign the Public and Private Subnets to their corresponding Routing table
    -> Create a Route in the Public Route Table to send default traffic ( 0.0.0.0/0 ) to the Internet Gateway you created
    -> Create a Route in the Private Route Table to send default traffic ( 0.0.0.0/0 ) to the NAT Gateway
    -> Finally, once you execute this CloudFormation script, you should be able to delete it and create it again, over and over in a predictable and repeatable manner, this is the true verification of working Infrastructure-as-Code
