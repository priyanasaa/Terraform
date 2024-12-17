provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWYLYJMGZPH66DFVN"
  secret_key = "8u6A7SUqsKo1lIsMBGbER+YS98RrWPuF9t971hHO"
}

resource "aws_instance" "example" {
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"
  key_name      = "Priyan"
  count         = 3

  tags = {
    Name = "Server A"
  }
}
