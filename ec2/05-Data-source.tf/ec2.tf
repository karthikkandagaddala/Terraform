resource "aws_instance" "db" {
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-00df4d51062af6a86"]
    instance_type = "t3.micro" 
    tags = {
            Name = "data-source-practice"
    }
}