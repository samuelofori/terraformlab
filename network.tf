#Create VPC
resource "aws_vpc" "vpc-post-code" { #represents Brent Borough
  cidr_block       = "10.10.0.0/16" #represents the square mile of the borough
  instance_tenancy = "default"

  tags = {
    Name = "${var.corp}-vpc-nw10"  #name of the boroughs post code
  }
}



#Create Private Subnet
resource "aws_subnet" "subnet-full-post-code" {
  vpc_id            = aws_vpc.vpc-post-code.id #my post code depends on the Borough's main post code NW10
  cidr_block        = "10.10.1.0/24" #Chapter road represents the local area under nw10
  availability_zone = "eu-west-1b" #Brent happens to be in Europe

  tags = {
    Name = "${var.corp}-subnet-nw10-8er" #This is how my SATNAV can find me.
  }
}
