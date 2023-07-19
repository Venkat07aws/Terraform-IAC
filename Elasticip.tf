resource "aws_eip" "ip" {
  instance = aws_instance.example.id
  vpc      = true

  tags = {
    Name = "elastic-ip"
  }
}
