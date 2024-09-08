//cloudwatchの権限に関すること？

data "aws_iam_policy_document" "ec2_permissions" {
  statement {
    effect = "Allow"
    actions = [ "s3:*" ]
    resources = [ "arn:aws:s3:::teeee" ]
  }

  statement {
    effect = "Allow"
    actions = [ "ec2:*" ]
    resources = [ "arn:aws:ec2:ap-northeast-1:024848467045:${var.vpc_id}" ]
  }

  statement {
    effect = "Allow"
    actions = [ "ssm:*" ]
    resources = [ "*" ]
  }
}

