resource "aws_security_group" "sg-terra" {
  name        = "allow_terra"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.vpc-terra.id

  ingress {
    description = "Allow inbound HTTP traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.4.1.0/24"]
  }

  egress {
    description = "Allow outbound HTTP traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.4.1.0/24"]
  }

  tags = {
    Name = "sg-terra"
  }

}
