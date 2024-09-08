resource "aws_iam_role_policy_attachment" "ec2_permissions" {
  role = aws_iam_role.ec2_role.name
  policy_arn = data.aws_iam_policy_document.ec2_permissions.arn
}