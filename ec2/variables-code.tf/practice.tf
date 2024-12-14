resource "aws_instance" "master-node" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.ansible_ssh.id]
    instance_type = "t3.micro"
    tags = {
        name = "master-node"
    }
}
resource "aws_security_group" "ansible_ssh" {
    name = "ansible_ssh"
    description = "allowing ansible_ssh"
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
        Name = "Master-Node"
        Createdby = "kandagaddala.karthik"
    }
}