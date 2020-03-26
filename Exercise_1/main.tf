# DONE: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile = "default"
}

# DONE: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  count = 4

  tags = {
    Name = "Udacity T2"
  }
}

# DONET: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  ami = "ami-0fc61db8544a617ed"
  instance_type = "m4.large"
  count = 2

  tags = {
    Name = "Udacity M4"
  }
}
