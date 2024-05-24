resource "aws_iam_role" "iamrole" {
  name = var.rolename
  assume_role_policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "sts:AssumeRole"
            ],
            "Principal": {
                "Service": [
                    "ec2.amazonaws.com"
                ]
            }
        }
    ]
    }
EOF
}
resource "aws_iam_role_policy_attachment" "policy" {
    role = aws_iam_role.iamrole.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  
}
