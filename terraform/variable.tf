variable "ami_id" {
    description = "The AMI ID to use for the instance"
    default     = "ami-0aba19e56f3eaec05"
}

variable "instance_type" {
    description = "The instance type to use for the instance"
    default     = "t3.micro"
}
variable "key_name" {
    description = "The name of the key pair to use for the instance"
    default     = "my_key"
}
variable "seurity_group_id" {
    description = "The ID of the security group to associate with the instance"
    default     = "sg-0eaa53a76d9c9fa6c"
}
variable "region" {
    description = "The AWS region to deploy the instance"
    default     = "eu-north-1"
}
variable "availability_zone" {
    description = "The availability zone to deploy the instance"
    default     = "eu-north-1a"
}