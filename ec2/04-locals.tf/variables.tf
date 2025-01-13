variable "image_ids" {
    default = "ami-09c813fb71547fc4f"
    type = string
}
variable "instance_type" {
    default = "t3.micro"
    type = string
}
variable "tags" {
    default = {
        Name = "backend"
        environment = "PROD"
        Module = "PROD"
        Project = "Mobily"
    }
}
variable "sg_name" {
    default = "Mars"
    type = string
}
variable "sg_description" {
    default = "Access for SSH connection"
    type = string
}
variable "ssh_port" {
    default = 22
}
variable "protocol" {
    default = "tcp"
    type = string
}
variable "allowed_cidr" {
    default = ["0.0.0.0/0"]
    type = list(string)
}