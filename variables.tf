variable "dynamo_table_name" {
	type = string 
	default = "devops-bootcamp-table"
	description = "This is the name for Dynamodb"
}

variable "ami_id" {
	default = "ami-006f82a1d5a27da54"
	type = string
        description = "This is the ami ID for Ec2 (ubuntu)"
}    
