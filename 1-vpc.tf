resource "aws_vpc" "vpc-terra" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  

  tags = {
    Name = "vpc-terra"
  }
}