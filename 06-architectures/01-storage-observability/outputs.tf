output "bucket_name" {
  description = "Name of the S3 bucket."
  value = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  description = "ARN of the S3 bucket."
  value = aws_s3_bucket.this.arn
}

output "alarm_name" {
  description = "CloudWatch alarm name."
  value = aws_cloudwatch_metric_alarm.objects.alarm_name
}