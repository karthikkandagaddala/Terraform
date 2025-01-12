variable "image_ids" {
    default = "ami-09c813fb71547fc4f"
    type = string
}
variable "instance_type" {
    default = "t3.small"
    type = string
}
variable "instance_names" {
    default = ["db", "frontend", "backend"]
    type = list
}
variable "common_tags" {
    default = {
        Name = "expense"
        environment = "dev"
        module = "dev"
        terraform = "true"
    }
}
variable "sg_name" {
    default = "ssh"
    type = string
}
variable "sg_description" {
    default = "allow ssh session"
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