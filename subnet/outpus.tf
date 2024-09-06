output "subnet_private_list_fargate_id" {
  value = concat(
    aws_subnet.aws_subnet_private[*].id
  )
}

output "subnet_public_list_id" {
  value = concat(
    aws_subnet.aws_subnet_public[*].id
  )
}