resource "aws_instance" "ec2-terra" {

  ami                         = "ami-0ea3c35c5c3284d82"
  instance_type               = "t2.micro"
  availability_zone           = "us-east-2"
  subnet_id                   = aws_subnet.pub-sub-terra.id
  vpc_security_group_ids      = aws_security_group.sg-terra.id
  associate_public_ip_address = true
  metadata_options {
    http_tokens = "required"
  }
  root_block_device {
    encrypted = true
  }

  tags = {
    Name = "ec2-terra"
    Env  = "Development"
  }
}
