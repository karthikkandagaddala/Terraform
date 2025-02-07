resource "aws_instance" "each" {
  for_each               = var.instance_names
  ami                    = var.image_ids
  vpc_security_group_ids = [aws_security_group.kssh.id]
  instance_type          = each.value
  tags = merge(
    var.common_tags,
    {
      Name   = each.key_name
      module = each.key_name
    }
  )
}
resource "aws_security_group" "kssh" {
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
    Name      = "kssh"
    createdby = "karthik_joy"
  }
}
