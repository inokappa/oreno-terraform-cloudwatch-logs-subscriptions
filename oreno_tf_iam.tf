#
# Create IAM role for CloudWatch Logs Subscriptions
#
resource "aws_iam_role" "cwl_to_kinesis_role" {
  name = "CWLtoKinesisRole"
  assume_role_policy = <<EOF
{
  "Statement": {
    "Effect": "Allow",
    "Principal": { "Service":"logs.ap-northeast-1.amazonaws.com" },
    "Action": "sts:AssumeRole"
  }
}
EOF
}

#
# Create IAM role Policy for CloudWatch Logs Subscriptions
#
resource "aws_iam_role_policy" "cwl_to_kinesis_policy" {
  name = "Permissions-Policy-For-CWL"
  role = "${aws_iam_role.cwl_to_kinesis_role.id}"
  policy = <<EOF
{
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "kinesis:PutRecord",
      "Resource": "${aws_kinesis_stream.stream.arn}"
    },
    {
      "Effect": "Allow",
      "Action": "iam:PassRole",
      "Resource": "${aws_iam_role.cwl_to_kinesis_role.arn}"
    }
  ]
} 
EOF
}
