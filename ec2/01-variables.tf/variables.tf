variable "instance_type" {
    type    = string
    default = "t3.micro"
}

variable "image_id" {
    default = "ami-09c813fb71547fc4f"
    type    = string
}

variable "tags" {
    default = {
        project     = "expense"
        environment = "Dev"
        module      = "Frontend"
    }
    type = map(string)
}

variable "sg_name" {
    default = "temp"
    type    = string
}

variable "sg_description" {
    default = "allowing port 22"
    type    = string
}

variable "ssh_port" {
    default = 22
    type    = number
}

variable "protocol" {
    default = "tcp"
    type    = string
}

variable "allowed_cidr" {
    type    = list(string)
    default = ["0.0.0.0/0"]
}
