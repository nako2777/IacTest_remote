//definition of grants

//信頼関係の定義
data "aws_iam_policy_document" "ec2_assume" {
  statement {
       actions = [ "sts:AssumeRole" ]
       effect = "Allow"
       principals {
         type = "Service"
         identifiers = [ "ec2.amazonaws.com" ]
       }
  }
}

data "aws_iam_policy_document" "ecs_assume" {
  statement {
    actions = ["sts:AssumeRole"]
    effect = "Allow"
    principals {
      type = "service"
      identifiers = [ "ec2.amazonaws.com" ]
    }
  }
}

# data "aws_iam_policy_document" "name" {
  
# }