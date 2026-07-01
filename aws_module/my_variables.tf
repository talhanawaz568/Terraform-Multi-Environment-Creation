variable "my_env" {
	description = "This is the environment for Infra"
	type = string 
}

variable "ami_id" {
	description = "This is the AMI Id for ec2"
        type = string
}

variable "instance_type" {
        description = "This is the type for EC2"
	type = string 
}

variable "instance_count" {
	description = "This is the count of Instance"
	type = number 
}
