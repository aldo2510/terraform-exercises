resource "aws_s3_bucket" "this" {
  bucket_prefix = var.bucket_prefix
  tags = {
    Name = "terraform-architecture-storage"
    Environment = "lab"
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id
  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "this" {
  bucket = aws_s3_bucket.this.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_cloudwatch_metric_alarm" "objects" {
  alarm_name = "terraform-lab-s3-object-count"
  alarm_description = "Ejemplo educativo de una alarma sobre el numero de objetos del bucket."
  namespace = "AWS/S3"
  metric_name = "NumberOfObjects"
  statistic = "Average"
  period = 86400
  evaluation_periods = 1
  threshold = 100
  comparison_operator = "GreaterThanOrEqualToThreshold"
  treat_missing_data = "notBreaching"

  dimensions = {
    BucketName = aws_s3_bucket.this.bucket
    StorageType = "AllStorageTypes"
  }
}