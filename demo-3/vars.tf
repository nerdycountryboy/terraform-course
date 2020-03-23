variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-west-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-077cf8407f0b2025c"
    us-west-2 = "ami-0756ed94dd77be215"
    us-west-1 = "ami-040b9bc6e3b5d78e1"
  }
}

