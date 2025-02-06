variable "image_ids" {
    default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
    default = "t3.small"
    type = string
}
variable "instance_names" {
    default = ["db", "frontend", "backend", "practice"]
    type = list
}
#variable "tags" {
#    default = {
#   Name = "practice"
#    project = "mobily"
#    environment = "prod"
#    }
#}
variable "sg_name" {
    default = "chumma"
    type = string
}
variable "sg_description" {
    default = "allow ssh session purpose"
}
variable "from_port" {
    default = 22
}
variable "to_port" {
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