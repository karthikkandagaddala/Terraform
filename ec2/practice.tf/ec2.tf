resource "aws_instance" "practice" {
    count = length(var.instance_names)
    ami = var.image_ids
    vpc_security_group_ids = [aws_security_group.chumma.id]
    instance_type = var.instance_names[count.index] == "practice" ? "t3.small" : "t3.micro"
    tags = {
        Name = var.instance_names[count.index]
    }
}
resource "aws_security_group" "chumma" {
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
        Name = "chumma"
        createdby = "karthik" 
    }
}