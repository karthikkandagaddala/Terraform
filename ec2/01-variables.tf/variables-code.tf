resource "aws_instance" "jump-host" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.dec14.id]
    instance_type = "t3.micro"
    tags = {
        Name = "JUMP-HOST"
    }
}
resource "aws_security_group" "dec14" {
    name = "dec14"
    description = "allow dec14"
    ingress {
        from_port = 22
        to_port =22
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
        Name = "Jump-Host"
        createdBy = "kandagaddala.karthik"
    }
}