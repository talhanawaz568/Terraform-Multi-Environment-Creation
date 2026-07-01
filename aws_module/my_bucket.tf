
resource "aws_s3_bucket" "my-bucket" {
        bucket = "${var.my_env}-devops-bootcamp-0118"
        tags = {
                Name = "${var.my_env}-devops-bootcamp"
		environment = var.my_env
        }
}
