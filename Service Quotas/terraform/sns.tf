#Create a SNS topic
resource "aws_sns_topic" "sns" {
  name = "service-quota"
}

#Create a Subscription
resource "aws_sns_topic_subscription" "squadcast" {
  topic_arn = aws_sns_topic.sns.arn
  protocol  = "https"
  endpoint  = "https://example.com/endpoint"
}
