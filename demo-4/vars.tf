variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-077cf8407f0b2025c"
    us-west-2 = "ami-0756ed94dd77be215"
    us-west-1 = "ami-040b9bc6e3b5d78e1"
    eu-west-1 = "ami-06b59122bc25ba6dc"
    eu-west-2 = "ami-0ce847e39053291c5"
  }
}
