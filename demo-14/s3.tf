resource "aws_s3_bucket" "ab" {
  bucket = "mybucket-aec29df1"
  acl    = "private"

  tags = {
    Name = "mybucket-aec29df1"
  }
}

