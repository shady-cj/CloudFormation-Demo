# Challenge 3

   <h2>EC2 Instance:</h2> An Amazon Linux 2 EC2 
   server in the private subnet. Choose the
   right AMI ID as applicable to your region
   and thet3.micro instance-type.

   <h2>SecurityGroup:</h2> A security group
   for the 
   server, that allows inbound port 80 
   access, for future use.
   
   <h2>IAM Role and InstanceProfile:</h2>
   The IAM 
   Role to allow EC2 Session Manager to 
   access our server. An InstanceProfile 
   will allow passing the IAM role to our 
   server.
   You will provide input parameters to 
   this script, for future expansion and 
   flexibility.
   
   Bonus/Optional: Instead of hard-coding 
   the VPC and Subnet ID, use the 
   import-export feature to cross reference 
   the resources created in Challenge 2.
