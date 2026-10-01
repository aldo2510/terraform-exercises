variable "aws_region" { type = string, default = "us-east-1" }
variable "topic_name" { type = string, default = "tf-training-topic" }
variable "subscription_email" {
  description = "Email opcional para practicar count. AWS enviará una confirmación."
  type = string
  default = null
  nullable = true
}
variable "tags" {
  type = map(string)
  default = { environment = "dev", owner = "student" }
}