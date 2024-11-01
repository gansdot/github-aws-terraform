resource "aws_internet_gateway" "igw-terra" {
  vpc_id = aws_vpc.vpc-terra.id

  tags = {
    Name = "igw-terra"
  }
}