output "aws_queue_url" {
  description = "AWS SQS queue URL."
  value = aws_sqs_queue.this.url
}

output "azure_queue_url" {
  description = "Azure Storage Queue URL."
  value = azurerm_storage_queue.this.url
}

output "architecture" {
  description = "Logical architecture represented by the lab."
  value = "Producer -> queue -> consumer, implemented independently on AWS and Azure"
}