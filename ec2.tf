#Key Pair
resource "aws_key_pair" "deployer" {
  key_name   = "tws-terra-key"
  public_key = file("/home/ubuntu/project/Terraform/terra-key.pub")
}

#Default VPC
resource "aws_default_vpc" "default" {

}

#Security Group
resource "aws_security_group" "security" {
	name = "allow ports"
	description = "this is the SG to open Ports for EC2 Instance"
	vpc_id = aws_default_vpc.default.id
	ingress {
		description = "This is fro SSH"
		from_port = 22
		to_port =  22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	egress{
	description = "this is for outgoing Internet"
	from_port = 0
	to_port = 0
	protocol = "-1"
	cidr_blocks = ["0.0.0.0/0"]	
	}
}

resource "aws_instance" "my_instance" {
	ami = var.ami_id
	instance_type = "t3.micro"
	key_name = aws_key_pair.deployer.key_name
	security_groups = [aws_security_group.security.name]
	tags = {
		Name = "terra-automate"
	}
}
