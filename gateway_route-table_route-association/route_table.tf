resource "aws_route_table" "route_table_public" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "public_association" {
  for_each = toset(var.subnet_public_id_list)

  route_table_id = aws_route_table.route_table_public.id
  subnet_id      = each.value
}  