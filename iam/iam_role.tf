resource "aws_iam_role" "ec2_role" {
  name = "ec2_role"
  assume_role_policy = data.aws_iam_policy_document.ec2_assume
}
resource "aws_iam_role" "ecs_role" {
  name = "ecs_role"
  assume_role_policy = data.aws_iam_policy_document.ecs_assume
}