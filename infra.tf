provider "aws"{
  access_key = ""
  secret_key = ""
  region = "us-east-1"
}
resource "aws_instance" "k1"{
  instance_type = "t2.medium"
  ami = "ami-04b70fa74e45c3917"
  tags = {
    Name = "Kube-master"
  }
}
resource "aws_instance" "w1"{
  instance_type = "t2.micro"
  ami = "ami-04b70fa74e45c3917"
  tags = {
    Name = "Kube-worker1"
  }
}
resource "aws_instance" "w2"{
  instance_type = "t2.micro"
  ami = "ami-04b70fa74e45c3917"
  tags = {
    Name = "Kube-worker2"
  }
}
