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
    Name = "source"
    project = "mobily"
    }
}
variable "sg_name" {
    default = "data"
    type = string
}
variable "sg_description" {
    default = "ssh connection"
    type = string
}
variable "from_port" {
    default = 22
}
variable "to_port" {
    default = 22
}
variable "protocol" {
    default = "tcp"
}
variable "allowed_cidr" {
    default = ["0.0.0.0/0"]
    type = list(string)
}
