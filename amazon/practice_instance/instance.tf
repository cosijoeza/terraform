resource "aws_instance" "linux" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08c66d4291ba7ca33"]

  tags = {
    Name = "My fisrt instance"
  }
}
