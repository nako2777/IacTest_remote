resource "aws_subnet" "aws_subnet_private" {
  count = 2
  vpc_id = var.vpc_id
  cidr_block = var.subnet-cidr-list[count.index]
  availability_zone = var.availability_zone[count.index]
  tags = {
   "Name" = "privateNewwork-fargate${count.index}"
  }
}

resource "aws_subnet" "aws_subnet_private_db" {
  count = 2
  vpc_id = var.vpc_id
  cidr_block = var.subnet-cidr-list[count.index + 2]
  availability_zone = var.availability_zone[count.index]
  tags = {
   "Name" = "privateNewwork-db${count.index}"
  }
}

resource "aws_subnet" "aws_subnet_public" {
  count = 2
  vpc_id = var.vpc_id
  cidr_block = var.subnet-cidr-list[count.index + 4]
  availability_zone = var.availability_zone[count.index]
  map_public_ip_on_launch = true
  tags = {
   "Name" = "publicNewwork${count.index}"
  }
}