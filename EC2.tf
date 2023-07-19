resource "aws_instance" "example" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  key_name      = "rjthapaa"
  subnet_id     = aws_subnet.public.id
  security_groups = [
    aws_security_group.web_server.id
  ]
  user_data = filebase64("userdata.sh")
  tags = {
    Name = "EC2web-server"
  }
}
