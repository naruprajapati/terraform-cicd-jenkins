resource "aws_s3_bucket" "cicd-bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "cicd-project"
    Environment = "lab"
    ManagedBY   = "Terraform"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-01a00762f46d584a1"   # Amazon Linux 2 AMI (Mumbai)
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
