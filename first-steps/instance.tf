provider "aws" {
  access_key = "AKIAVJ37ROA3FARSQH74"
  secret_key = "UtUdn76/iyobAhOemB7JOpPsLdvxZkMIcUuJnLAl"
  region     = "us-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-040b9bc6e3b5d78e1"
  instance_type = "t2.micro"
}

