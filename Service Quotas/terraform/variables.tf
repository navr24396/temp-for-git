/*variable "sns" {
  default = "arn:aws:sns:us-west-2:585008069642:sns"
  default = aws_sns_topic.sns.arn
  type    = string
}*/

locals {
  sns_arn = aws_sns_topic.sns.arn
}
variable "alarm_description" {
  type = string
  default = "This alarm triggers when 80% of the applied Service Quota limit is reached."
}

variable "comparison_operator" {
  type = string
  default = "GreaterThanOrEqualToThreshold"
}

variable "datapoints_to_alarm" {
  type = number
  default = 5
}

variable "evaluation_periods" {
  type = number
  default = 5
}

variable "threshold" {
  type = number
  default = 80
}

variable "treat_missing_data" {
  type = string
  default = "missing"
}