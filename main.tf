module "dev-app" {
	source = "./aws_module"
	my_env = "dev"
	instance_type = "t3.micro"
	ami_id = "ami-006f82a1d5a27da54"
        instance_count = 1
}


module "stg-app" {
        source = "./aws_module"
        my_env = "stg"
        instance_type = "t3.small"
        ami_id = "ami-006f82a1d5a27da54"
        instance_count = 1
}

module "prd-app" {
        source = "./aws_module"
        my_env = "prd"
        instance_type = "t3.small"
        ami_id = "ami-006f82a1d5a27da54"
	instance_count = 1
}
