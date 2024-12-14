resource "aws_instance" "Frontend" {
    vpc_security_group_ids = [aws_security_group.ids.temp]
    instance_type = "t3.micro"
    ami = "ami-09c813fb71547fc4f"
    tags = {
        Name = "Frontend"
    }
}
resource "aws_security_group" "temp" {
    name = "temp"
    description = "allow temp"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = [0.0.0.0/0]
    }
    tags {
        Name = "Temp"
        createdBY = "karthik"
    }
}
