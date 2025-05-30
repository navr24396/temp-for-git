resource "aws_cloudwatch_metric_alarm" "ec2_quota_running_on_demand_standard_instances" {
  actions_enabled     = true
  alarm_actions       = [var.sns]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ec2 | Quota: Running On-Demand Standard (A, C, D, H, I, M, R, T, Z) instances"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  #dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: ec2 | Quota: Running On-Demand Standard (A, C, D, H, I, M, R, T, Z) instances"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
  tags = {
    "ServiceQuotaMonitor" = "L-1216C47A"
  }
  tags_all = {
    "ServiceQuotaMonitor" = "L-1216C47A"
  }
  threshold           = var.threshold
  threshold_metric_id = null
  treat_missing_data  = var.treat_missing_data
  unit                = null

  metric_query {
    account_id  = null
    expression  = null
    id          = "usage_data"
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        "Class"    = "Standard/OnDemand"
        "Resource" = "vCPU"
        "Service"  = "EC2"
        "Type"     = "Resource"
      }
      metric_name = "ResourceCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Maximum"
      unit        = null
    }
  }
  metric_query {
    account_id = null
    expression = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id         = "pct_utilization"
    label      = "% Utilization"
    #period      = 0
    return_data = true
  }
}

# aws_cloudwatch_metric_alarm.rds_quota_subnets_per_db_subnet_group:
resource "aws_cloudwatch_metric_alarm" "rds_quota_subnets_per_db_subnet_group" {
  actions_enabled     = true
  alarm_actions       = [var.sns]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: rds | Quota: Subnets per DB subnet group"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  #dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: rds | Quota: Subnets per DB subnet group"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
  tags = {
    "ServiceQuotaMonitor" = "L-6F3ACC36"
  }
  tags_all = {
    "ServiceQuotaMonitor" = "L-6F3ACC36"
  }
  threshold           = var.threshold
  threshold_metric_id = null
  treat_missing_data  = var.treat_missing_data
  unit                = null

  metric_query {
    account_id  = null
    expression  = null
    id          = "usage_data"
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        "Class"    = "None"
        "Resource" = "SubnetsPerDBSubnetGroup"
        "Service"  = "RDS"
        "Type"     = "Resource"
      }
      metric_name = "ResourceCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Maximum"
      unit        = null
    }
  }
  metric_query {
    account_id = null
    expression = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id         = "pct_utilization"
    label      = "% Utilization"
    #period      = 0
    return_data = true
  }
}

# aws_cloudwatch_metric_alarm.ssm_quota_describe_instance_info_rate:
resource "aws_cloudwatch_metric_alarm" "ssm_quota_describe_instance_info_rate" {
  actions_enabled     = true
  alarm_actions       = [var.sns]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Describe instance (node) information rate"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: ssm | Quota: Describe instance (node) information rate"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
  tags = {
    "ServiceQuotaMonitor" = "L-63DB636A"
  }
  tags_all = {
    "ServiceQuotaMonitor" = "L-63DB636A"
  }
  threshold           = var.threshold
  threshold_metric_id = null
  treat_missing_data  = var.treat_missing_data
  unit                = null

  metric_query {
    account_id  = null
    expression  = null
    id          = "usage_data"
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        "Class"    = "None"
        "Resource" = "DescribeInstanceInformation"
        "Service"  = "SSM"
        "Type"     = "API"
      }
      metric_name = "CallCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Sum"
      unit        = null
    }
  }
  metric_query {
    account_id = null
    expression = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id         = "pct_utilization"
    label      = "% Utilization"
    #period      = 0
    return_data = true
  }
}

