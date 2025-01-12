resource "aws_instance" "backend" {
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.ssh-session.id]
    instance_type = var.instance_type
    tags = var.tags
}
resource "aws_security_group" "ssh-session" {
    name = var.sg_name
    description = var.sg_description
    ingress {
        from_port = var.ssh_port
        to_port = var.ssh_port
        protocol = var.protocol
        cidr_blocks = var.allowed_cidr
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.allowed_cidr
    }
    tags = {
        Name = "ssh-session"
        createdBy = "kandagaddala karthik"
    }
}