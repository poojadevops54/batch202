provider "aws" {
    region = var.region
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
    key_name = var.key_name
    vpc_security_group_ids = [var.seurity_group_id]
    availability_zone = var.availability_zone
    tags = {
        name = "pooja"
        Name = "myinstance"
        Environment = "dev"
    }
}




