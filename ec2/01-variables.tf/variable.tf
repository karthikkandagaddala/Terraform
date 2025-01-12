variable "image_id" {
    default = "ami-09c813fb71547fc4f"
    type = string
}
variable "instance_type" {
    default = "t3.micro"
    type = string
}
variable "tags" {
    default = {
        project = "Expense"
        Environment = "Dev"
        Module = "backend"
        Name = "backend"
    }
}
variable "sg_name" {
    default = "ssh-session"
}
variable "sg_description" {
    default = "Allowing port 22"
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