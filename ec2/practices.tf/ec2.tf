resource "aws_instance" "backed" {
  count                  = length(var.instance_names)
  ami                    = var.image_ids
  vpc_security_group_ids = [aws_security_group.pump.id]
  instance_type          = var.instance_names[count.index] == "backed" ? "t3.small" : "t3.micro"
  tags = {
    Name = var.instance_names[count.index]
  }
}
resource "aws_security_group" "pump" {
  name        = var.sg_name
  description = var.sg_description
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.protocol
    cidr_blocks = var.allowed_cidr
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.allowed_cidr
  }
  tags = {
    Name      = "pump"
    createdby = "karthik"
  }
}
