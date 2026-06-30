provider "aws" {
    region = "eu-north-1"
}
resource "aws_instance" "myinstance" {
    ami = "ami-0aba19e56f3eaec05"
    instance_type = "t3.micro"
    key_name = "id_rsa"
    vpc_security_group_ids = ["sg-0eaa53a76d9c9fa6c",]
    tags = {
        name = "pooja"
        Name = "myinstance"
        Environment = "dev"
    }
}


