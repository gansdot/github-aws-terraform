resource "aws_vpc" "vpc-terra" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  

  tags = {
    Name = "vpc-terra"
  }
}

resource "aws_flow_log" "log_terra" {
  log_destination = "arn:aws:s3:::my-local-lp-store-terra/*"
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.vpc-terra.id

  tags = {
    Name = "log_terra"
  }
}