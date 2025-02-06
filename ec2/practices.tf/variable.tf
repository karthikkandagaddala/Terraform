variable "image_ids" {
  default = "ami-09c813fb71547fc4f"
  type    = string
}
variable "instance_type" {
  default = "t3.micr"
  type    = string
}
variable "tags" {
  default = {
    Name = "backed"
  }
}
variable "sg_name" {
  default = "pump"
  type    = string
}
variable "sg_description" {
  default = "secured shell"
  type    = string
}
variable "ssh_port" {
  default = 22
}
variable "protocol" {
  default = "tcp"
  type    = string
}
variable "allowed_cidr" {
  default = ["0.0.0.0/0"]
  type    = list(string)
}
variable "instance_names" {
  default = ["db", "backed", "frontend"]
  type    = list(any)
}
