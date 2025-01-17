resource "aws_instance" "source" {
    ami = var.image_ids
    vpc_security_group_ids = [aws_security_group.data.id]
    instance_type = var.instance_type
    tags = var.tags
}
resource "aws_security_group" "data" {
    name = var.sg_name
    description = var.sg_description
    ingress {
        from_port = var.from_port
        to_port = var.to_port
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
        Name = "source"
        createdBY = "karthik"
    }
}