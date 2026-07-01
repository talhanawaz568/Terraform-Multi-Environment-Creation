resource "aws_instance" "my_instance" {
        ami = var.ami_id
	count = var.instance_count
        instance_type = var.instance_type
        tags = {
                Name = "${var.my_env}-devops-bootcamp-0118-instance"
        }
}
