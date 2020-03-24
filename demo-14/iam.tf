resource "aws_iam_role" "test-s3-mybucket-role" {
  name               = "test-s3-mybucket-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

resource "aws_iam_instance_profile" "test-s3-mybucket-role-instanceprofile" {
  name = "test-s3-mybucket-role"
  role = aws_iam_role.test-s3-mybucket-role.name
}

resource "aws_iam_role_policy" "test-s3-mybucket-role-policy" {
  name = "test-s3-mybucket-role-policy"
  role = aws_iam_role.test-s3-mybucket-role.id
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
              "s3:*"
            ],
            "Resource": [
              "arn:aws:s3:::mybucket-aec29df1",
              "arn:aws:s3:::mybucket-aec29df1/*"
            ]
        }
    ]
}
EOF

}

