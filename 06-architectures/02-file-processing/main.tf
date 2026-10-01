data "archive_file" "lambda" {
  type = "zip"
  source_file = "${path.module}/lambda_function.py"
  output_path = "${path.module}/lambda_function.zip"
}

data "aws_iam_policy_document" "lambda_assume_role" {
  statement {
    effect = "Allow"
    principals {
      type = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
    actions = ["sts:AssumeRole"]
  }
}

resource "aws_s3_bucket" "this" {
  bucket_prefix = var.bucket_prefix
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id
  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_iam_role" "lambda" {
  name_prefix = "tf-file-processor-"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role.json
}

resource "aws_iam_role_policy_attachment" "basic_execution" {
  role = aws_iam_role.lambda.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_cloudwatch_log_group" "lambda" {
  name = "/aws/lambda/${var.lambda_name}"
  retention_in_days = 3
}

resource "aws_lambda_function" "this" {
  function_name = var.lambda_name
  role = aws_iam_role.lambda.arn
  handler = "lambda_function.lambda_handler"
  runtime = "python3.12"
  filename = data.archive_file.lambda.output_path
  source_code_hash = data.archive_file.lambda.output_base64sha256
  depends_on = [aws_iam_role_policy_attachment.basic_execution]
}

resource "aws_lambda_permission" "allow_s3" {
  statement_id = "AllowExecutionFromS3"
  action = "lambda:InvokeFunction"
  function_name = aws_lambda_function.this.arn
  principal = "s3.amazonaws.com"
  source_arn = aws_s3_bucket.this.arn
}

resource "aws_s3_bucket_notification" "this" {
  bucket = aws_s3_bucket.this.id
  lambda_function {
    lambda_function_arn = aws_lambda_function.this.arn
    events = ["s3:ObjectCreated:*"]
  }
  depends_on = [aws_lambda_permission.allow_s3]
}