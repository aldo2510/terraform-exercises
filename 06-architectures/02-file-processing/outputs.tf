output "bucket_name" {
  value = aws_s3_bucket.this.bucket
  description = "Upload files to this bucket to trigger Lambda."
}

output "lambda_name" {
  value = aws_lambda_function.this.function_name
  description = "Lambda function that processes S3 events."
}

output "log_group" {
  value = aws_cloudwatch_log_group.lambda.name
  description = "CloudWatch Logs group."
}