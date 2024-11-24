resource "aws_instance" "master_node" {
    ami = "ami-09c813fb71547fc4f"
    vcp_security_group_ids = [aws_security_group.ansible.id]
    instance_type = "t2.micro"
    tags = {
        Name = "master_node"
    }
}
resource "aws_security_group" "ansible" {
    name = "ansible"
    description = "to access server"
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
        tags {
            Name = "ansible"
            createdBY = "karthik"
        }
    }
}