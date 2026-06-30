provider "aws" {
    region = "eu-north-1"
}
terraform{
    backend "s3" {
        bucket = "somy7564"
        key    = "tfstatefile"
        region = "eu-north-1"
    }

}
resource "aws_instance" "myinstance" {
    ami = "ami-0aba19e56f3eaec05"
    instance_type = "t3.micro"
    key_name = "my_key"
    vpc_security_group_ids = ["sg-0eaa53a76d9c9fa6c",]
    tags = {
        name = "pooja"
        Name = "myinstance"
        Environment = "dev"
    }
}


