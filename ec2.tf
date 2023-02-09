resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    "Name" = "HelloWorld"
  }
}

resource "aws_instance" "web-sa-east-1" {
  provider      = aws.aws-sa-east-1
  ami           = data.aws_ami.ubuntu-sa-east-1.id
  instance_type = "t2.micro"

  tags = {
    "Name" = "HelloWorld"
  }
}