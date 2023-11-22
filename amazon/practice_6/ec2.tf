resource "aws_instance" "public_instance" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
}
