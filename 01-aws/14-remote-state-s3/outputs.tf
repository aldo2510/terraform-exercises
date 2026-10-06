output "exercise_bucket_name" {
  description = "Name of the S3 bucket created by this exercise."
  value       = aws_s3_bucket.exercise.bucket
}

output "state_backend_key" {
  description = "Key used by the S3 backend."
  value       = "14-remote-state-s3/exercise/terraform.tfstate"
}