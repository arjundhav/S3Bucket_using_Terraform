resource "aws_s3_bucket" "terraform-bucket" {
    bucket = "arjun-bucket-v1"
    tags = {
        Name = "first-bucket"
        Env = "Dev"
        Owner = "Arjun"
    }
  
}

resource "aws_s3_bucket_versioning" "my-bucket-versioning" {
  bucket = aws_s3_bucket.terraform-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
