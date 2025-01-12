variable "image_ids" {
    default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
    default = "t3.small"
    type = string    
}
variable "instance_names" {
    default = ["db", "frontend", "backend"]
    type = list
}
variable "sg_name" {
    default = "token"
    type = string
}
variable "sg_description" {
    default = "token based codee for terraform"
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