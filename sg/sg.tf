//outboundに関する設定？

//private-subnet
resource "aws_security_group" "private_subnet" {
  description = "for server in private subnet"
  name = "private_subnet"
  vpc_id = var.vpc_id

}

//alb

resource "aws_security_group" "alb_sg" {
  description = "for alb"
  name = "alb_sg"
  vpc_id = var.vpc_id

  ingress = [ 
    {
      description = "Allow inbound traffic from the internet"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
   ]
}

//fargate
resource "aws_security_group" "fargate_sg" {
  description = "for fargate"
  name = "fargate_sg"
  vpc_id = var.vpc_id

  ingress = [ 
    {
        description = "Allow inbound traffic from the alb"
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        security_groups = ["${aws_security_group.alb_sg.id}"]
    }
   ]
}

//db
resource "aws_security_group" "db_sg" {
  description = "for db"
  name = "db_sg"
  vpc_id = var.vpc_id

  ingress = [ 
    {
        description = "Allow inbound traffic from the fargate"
        from_port   = 5432
        to_port     = 5432
        protocol    = "tcp"
        security_groups = ["${aws_security_group.private_subnet.id}"]
    } 
  ]
}


