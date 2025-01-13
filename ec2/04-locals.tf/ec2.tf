resource "aws_instance" "example" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.mars.id]
    instance_type = "t3.micro"
    tags = {
        Name = "example"
    }
}
resource "aws_security_group" "mars" {
    name = "mars"
    description = "Access for ssh connection"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "mars"
        createdBY = "karthik"
    }
}