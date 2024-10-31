resource "aws_subnet" "pub-sub-terra" {
  vpc_id            = aws_vpc.vpc-terra.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-2"

  tags = {
    Name = "pub-sub-terra"
  }
}