# cfScript.sh

This is a script that runs cloud formation code when run on the terminal all you need is to specify the parameters needed for the cloudformation code
such as

    - $1 as the cloud formation stack name or title
    - $2 as the cloud formation region name
    - $3 as the cloud formation file scripts to be run. in this case.

# cfUScript.sh

The script is similar to the first one but the difference is that this runs for updating an already deployed infrastructure..
So the command line arguments remains the same.. only that when specifying a stack name make sure it matches an already existing infrastructure.

# testcfn.yml

This file is just a dummy file was meant for testing/learning purposes

# ec2cfn.yml

This file builds an infrastructure that provides a security group and an ec2 instance using the aws default vpc id and a default subnet id

    - The Security group as an ingress / inbound rules of allowing HTTP protocol on port 80 from any source (0.0.0.0/0)
    - The Security group also have an outbound rule of all protocols from anywhere on the internet
    - The Ec2 instance created uses the security group created above thus it's safe to say that the ec2 depends on the security group.. We make use of the (Ref) reference attribute to reference a previously created resource in the code thus referencing the name of the security group.
    - The Ec2 instance also runs some scripts while instantiating... The scripts are passed through
    the "UserData".. The scripts installs apache on the server.
