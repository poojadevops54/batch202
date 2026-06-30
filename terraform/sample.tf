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
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = "my_key"
    vpc_security_group_ids = ["sg-0eaa53a76d9c9fa6c",]
    tags = {
        name = "pooja"
        Name = "myinstance"
        Environment = "dev"
    }
}

variable "ami_id" {
    description = "The AMI ID to use for the instance"
    default     = "ami-0aba19e56f3eaec05"
}

variable "instance_type" {
    description = "The instance type to use for the instance"
    default     = "t3.micro"
}

output "public_ip" {
    value = aws_instance.myinstance.public_ip
}

