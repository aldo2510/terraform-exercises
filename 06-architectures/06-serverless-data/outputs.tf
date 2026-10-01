output "aws_table_name" {
  description = "AWS DynamoDB table."
  value = aws_dynamodb_table.this.name
}

output "azure_table_name" {
  description = "Azure Table Storage table."
  value = azurerm_storage_table.this.name
}

output "architecture" {
  description = "Logical pattern represented by the lab."
  value = "Serverless application -> managed NoSQL/table storage, implemented independently on AWS and Azure"
}