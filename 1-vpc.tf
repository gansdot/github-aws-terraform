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

  # Enable the new meta fields
  log_format = "$${version} $${vpc-id} $${subnet-id} $${instance-id} $${interface-id} $${account-id} $${type} $${srcaddr} $${dstaddr} $${srcport} $${dstport} $${protocol} $${packets} $${bytes} $${start} $${end} $${action} $${tcp-flags}"

  tags = {
    Name = "log_terra"
  }
}