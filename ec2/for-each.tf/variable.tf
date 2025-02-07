variable "image_ids" {
  default = "ami-09c813fb71547fc4f"
}
variable "instance_types" {
  default = "t3.micro"
  type    = string
}
variable "tags" {
  default = {
    Name = "each"
  }
}
variable "instance_names" {
  default = ["db", "each", "backend", "frontend"]
  type    = list(string)
}
variable "ssh_port" {
  default = 22
}
variable "protocol" {
  default = "tcp"
}
variable "allowed_cidr" {
  default = ["0.0.0.0/0"]
}
variable "sg_name" {
  default = "kssh"
  type    = string
}
variable "sg_description" {
  default = "secured shell"
  type    = string
}
