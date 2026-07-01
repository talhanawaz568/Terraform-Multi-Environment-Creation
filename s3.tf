resource "aws_s3_bucket" "my-bucket" {
	bucket = "devops-bootcamp-0118"
	tags = {
		Name = "devops-bootcamp"
	}
}
