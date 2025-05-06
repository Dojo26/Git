variable "ami_value" {
    description = "value of my AMI"
}

variable "instance_type" {
    description = "value of my instance type"
}

variable "subnet_id" {
    description = "value of my subnet"
}

provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
   source = "./modules/ec2_instance"
   ami_value = ""
   instance_type_value = ""
   subnet_id_value = ""
}  

resource "aws_instance" "Ojo1" {
    ami = "var.ami_value"
    instance_type = "var.instance_type"
    subnet_id = "var.subnet_id"
}