resource "aws_instance" "web" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.nginx.id]
    instance_type = "t3.micro"
    tags = {
        name = "db"
    }
    resource "aws_security_group" "nginx" {
        name = "nginx"
        description = "allowing nginx create"
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
        tags {
            name = "nginx"
            createdBy = "karthik"
        }
    }
}