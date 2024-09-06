# resource "aws_vpc" "vpc-main" {
#     count = var.enviroment == "DEV" ? 0 : 1

# }

resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    name = "byTerraform"
  }
}