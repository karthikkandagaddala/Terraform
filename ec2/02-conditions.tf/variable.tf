variable "image_ids" {
    default = "ami-09c813fb71547fc4f"
    type = string
}
variable "instance_name" {
    default = "frontend"
    type = string
}
variable "instance_type" {
    default = "t3.micro"
    type = string
}
variable "tags" {
    default = {
        Name = "frontend"
        environment = "prod"
        module = "prod"
    }
}
variable "sg_name" {
    default = "shell"
}
variable "sg_description" {
    default = "Access for port 22"
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