# Architectures

This diagrams were created using LUCID CHARTS

# Challenge 1

This diagram depicts the following....

    -> An AWS container which means an aws account
    -> A VPC container which means a vpc for that region.
    -> 2 Availability zones
    -> 2 Subnets each in each AZs(previously created) in which one is private and the other is public per AZ.
    -> A route Table which routes the paths
    -> An internet gateway for internet access to public subnets
    -> 2 NAT gateways (Network Address Translation) put in 2 public subnets of differents AZs
    -> Ideally a different route tables should be created to take care of the routing for private subnets and public subnets.
    -> The NAT gateways always resides in the public subnets because they need internet access.
    -> And they(NAT) allow the private subnets to gain internet access indirectly by converting the private subnets internal Ip into a its (NAT) own public IP which in turn gains internet access through the internet gateway the public subnets (in which the NAT gateway resides) has access to.
    -> 2 EC2 instances launched in the 2 public subnets respectively and one EC2 instance launched in the private subnet.
    -> An auto scaling group spanning the 2 AZs for the private subnets
    -> A load balancer spanning across both AZs to distribute the internet traffic. across multiple similar servers in different AZs
    -> Security group to serve as firewalls at the individual instance/server level
    -> An s3 Buckets which is put outside the vpc to denote that it's a global resource and ideally this should store files like images, videos, log files etc.. which would persist across multiple servers.

# Challenge 2

This drawing depicts a corporate-only cloud in which the companies infrastructure only consists of private subnets and no NAT gateway.

This diagram depicts the following....

    -> An AWS account
    -> A VPC
    -> Two private subnets. in different Availability Zones (AZs)
    -> A Virtual Private Network Gateway (VPN GATEWAY) which creates an isolated connection through a
    -> VPN Connection which creates a tunnel to the
    -> Customer Gateway which then communicates with the physical data center..
