output "dynamodb_table_name" {
  description = "DynamoDB table name"
  value       = aws_dynamodb_table.terraform-backend-lock.name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.bucket
}