output "topic_arn" { value = aws_sns_topic.this.arn }
output "subscription_count" { value = length(aws_sns_topic_subscription.email) }