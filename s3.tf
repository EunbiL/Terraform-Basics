resource "aws_s3_bucket" "create_s3_bucket" {
  bucket = var.bucket_name
}

output "bucket_name" {
  value       = aws_s3_bucket.create_s3_bucket.bucket
  description = "The name of the created S3 bucket"
}