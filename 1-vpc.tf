resource "aws_vpc" "vpc-terra" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  

  tags = {
    Name = "vpc-terra"
  }
}

resource "aws_flow_log" "log_terra" {
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.vpc-terra.id

  tags = {
    Name = "log_terra"
  }
}