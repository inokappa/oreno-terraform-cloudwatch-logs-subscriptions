#
# Output
#
output "aws_kinesis_stream.stream.name" {
  value = "${aws_kinesis_stream.stream.arn}"
}

output "aws_iam_role.cwl_to_kinesis_role.arn" {
  value = "${aws_iam_role.cwl_to_kinesis_role.arn}"
}

output "aws_iam_role_policy.cwl_to_kinesis_policy.role" {
  value = "${aws_iam_role_policy.cwl_to_kinesis_policy.role}"
}
