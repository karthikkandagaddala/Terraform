resource "aws_instance" "frontend" {
  ami                    = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.nssh.id]
  instance_type          = "t3.micro"
  tags = {
    Name = "db"
  }
}
resource "aws_security_group" "nssh" {
  name        = "nssh"
  description = "security purpose"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name      = "nssh"
    createdby = "karthik"
  }
}
