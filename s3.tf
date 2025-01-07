resource "aws_s3_bucket" "create" {
  bucket = var.bucket_name
}

output "bucket_name" {
  value       = aws_s3_bucket.create.bucket
  description = "The name of the created S3 bucket"
}