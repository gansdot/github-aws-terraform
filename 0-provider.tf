terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-2"
  profile = "tfaws-usr"
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