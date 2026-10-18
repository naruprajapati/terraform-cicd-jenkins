resource "aws_s3_bucket" "cicd-bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "cicd-project"
    Environment = "lab"
    ManagedBY   = "Terraform"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316"   # Amazon Linux 2 AMI (Mumbai)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
