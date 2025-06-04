resource "aws_cloudwatch_metric_alarm" "ec2_quota_running_on_demand_standard_instances" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
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
####################################################

resource "aws_cloudwatch_metric_alarm" "ssm_quota_describe_instance_info_rate" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "Maximum-number-of-deployment-strategies" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: appconfig | Quota: Maximum number of deployment strategies"
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
        "Resource" = "DeploymentStrategy"
        "Service"  = "AWS AppConfig"
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

###########################################################################

resource "aws_cloudwatch_metric_alarm" "Maximum-number-of-applications" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: appconfig | Quota: Maximum number of applications"
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
        "Resource" = "Application"
        "Service"  = "AWS AppConfig"
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
###########################################################################
resource "aws_cloudwatch_metric_alarm" "Auto-Scaling-groups-per-region" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: autoscaling | Quota: Auto Scaling groups per region"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  statistic = null
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
        "Resource" = "NumberOfAutoScalingGroup"
        "Service"  = "AutoScaling"
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
    return_data = true
  }
}
###########################################################################



###########################################################################


###########################################################################


###########################################################################
resource "aws_cloudwatch_metric_alarm" "stacks" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: cloudformation | Quota: Stacks"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: cloudformation | Quota: Stacks"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "Stack"
        "Service"  = "CloudFormation"
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
###########################################################################
resource "aws_cloudwatch_metric_alarm" "stack-sets-per-administrator-account" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: cloudformation | Quota: Stack sets per administrator account"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: cloudformation | Quota: Stack sets per administrator account"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "StackSets"
        "Service"  = "CloudFormation"
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
###########################################################################

###########################################################################

###########################################################################
resource "aws_cloudwatch_metric_alarm" "maximum-number-of-tables" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: dynamodb | Quota: Maximum number of tables"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: dynamodb | Quota: Maximum number of tables"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "TableCount"
        "Service"  = "DynamoDB"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "rate-of-getauthorizationtoken-requests" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ecr | Quota: Rate of GetAuthorizationToken requests"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: ecr | Quota: Rate of GetAuthorizationToken requests"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "GetAuthorizationToken"
        "Service"  = "ECR"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "rate-of-batchgetimage-requests" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ecr | Quota: Rate of BatchGetImage requests"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: ecr | Quota: Rate of BatchGetImage requests"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "BatchGetImage"
        "Service"  = "ECR"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "rate-of-getdownloadurlforlayer-requests" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ecr | Quota: Rate of GetDownloadUrlForLayer requests"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: ecr | Quota: Rate of GetDownloadUrlForLayer requests"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "GetDownloadUrlForLayer"
        "Service"  = "ECR"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "subnet-groups-per-region" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticache | Quota: Subnet groups per Region"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticache | Quota: Subnet groups per Region"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "SubnetGroup"
        "Service"  = "ElastiCache"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "users-per-region" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticache | Quota: Users per Region"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticache | Quota: Users per Region"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "User"
        "Service"  = "ElastiCache"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "nodes-per-cluster-cluster-mode-enabled" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticache | Quota: Nodes per cluster (cluster mode enabled)"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticache | Quota: Nodes per cluster (cluster mode enabled)"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "NodesPerCluster"
        "Service"  = "ElastiCache"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "nodes-per-region" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticache | Quota: Nodes per Region"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticache | Quota: Nodes per Region"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "NodesPerRegion"
        "Service"  = "ElastiCache"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "subnets-per-subnet-group" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticache | Quota: Subnets per subnet group"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticache | Quota: Subnets per subnet group"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "SubnetsPerSubnetGroup"
        "Service"  = "ElastiCache"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "rules-per-application-load-balancer" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Rules per Application Load Balancer"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Rules per Application Load Balancer"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "RoutingRulesPerApplicationLoadBalancer"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "network-load-balancer-enis-per-vpc" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Network Load Balancer ENIs per VPC"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Network Load Balancer ENIs per VPC"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "NetworkLoadBalancersENIsPerVPC"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################


###########################################################################
resource "aws_cloudwatch_metric_alarm" "listeners-per-application-load-balancer" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Listeners per Application Load Balancer"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Listeners per Application Load Balancer"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "ListenersPerApplicationLoadBalancer"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "certificates-per-network-load-balancer" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Certificates per Network Load Balancer"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Certificates per Network Load Balancer"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "CertificatesPerNetworkLoadBalancer"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "certificates-per-application-load-balancer" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Certificates per Application Load Balancer"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Certificates per Application Load Balancer"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "CertificatesPerApplicationLoadBalancer"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "targets-per-availability-zone-per-network-load-balancer" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Targets per Availability Zone per Network Load Balancer"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Targets per Availability Zone per Network Load Balancer"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "TargetsPerAvailabilityZonePerNetworkLoadBalancer"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "targets-per-network-load-balancer" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Targets per Network Load Balancer"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Targets per Network Load Balancer"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "TargetsPerNetworkLoadBalancer"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################


###########################################################################


###########################################################################
resource "aws_cloudwatch_metric_alarm" "target-groups-per-region" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Target Groups per Region"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Target Groups per Region"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "TargetGroupsPerRegion"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################

###########################################################################


###########################################################################
resource "aws_cloudwatch_metric_alarm" "targets-per-target-group-per-region" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Targets per Target Group per Region"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Targets per Target Group per Region"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "TargetsPerTargetGroupPerRegion"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "targets-per-application-load-balancer" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Targets per Application Load Balancer"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Targets per Application Load Balancer"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "TargetsPerApplicationLoadBalancer"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "application-load-balancers-per-region" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Application Load Balancers per Region"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Application Load Balancers per Region"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "ApplicationLoadBalancersPerRegion"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "network-load-balancers-per-region" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Network Load Balancers per Region"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Network Load Balancers per Region"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "NetworkLoadBalancersPerRegion"
        "Service"  = "Elastic Load Balancing"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "the-maximum-number-of-listclusters-api-requests-that-you-can-make-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticmapreduce | Quota: The maximum number of ListClusters API requests that you can make per second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticmapreduce | Quota: The maximum number of ListClusters API requests that you can make per second"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "ListClusters"
        "Service"  = "EMR"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "invocations-throttle-limit-in-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: events | Quota: Invocations throttle limit in transactions per second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: events | Quota: Invocations throttle limit in transactions per second"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "Invocations"
        "Service"  = "EventBridge"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "delivery-streams" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: firehose | Quota: Delivery streams"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: firehose | Quota: Delivery streams"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "DeliveryStreams"
        "Service"  = "Firehose"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "listthings-api-tps" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: iotcore | Quota: ListThings API TPS"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: iotcore | Quota: ListThings API TPS"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "ListThings"
        "Service"  = "IoT"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "shards-per-region" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: kinesis | Quota: Shards per Region"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: kinesis | Quota: Shards per Region"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "ProvisionedShards"
        "Service"  = "Kinesis Data Streams"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "getkeypolicy-request-rate" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: kms | Quota: GetKeyPolicy request rate"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: kms | Quota: GetKeyPolicy request rate"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "GetKeyPolicy"
        "Service"  = "KMS"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "creategrant-request-rate" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: kms | Quota: CreateGrant request rate"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: kms | Quota: CreateGrant request rate"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "CreateGrant"
        "Service"  = "KMS"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "listgrants-request-rate" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: kms | Quota: ListGrants request rate"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: kms | Quota: ListGrants request rate"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "ListGrants"
        "Service"  = "KMS"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "customer-master-keys-cmks" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: kms | Quota: Customer Master Keys (CMKs)"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: kms | Quota: Customer Master Keys (CMKs)"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "KeysPerAccount"
        "Service"  = "KMS"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "cryptographic-operations-symmetric-request-rate" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: kms | Quota: Cryptographic operations (symmetric) request rate"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: kms | Quota: Cryptographic operations (symmetric) request rate"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "CryptographicOperationsSymmetric"
        "Service"  = "KMS"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "describekey-request-rate" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: kms | Quota: DescribeKey request rate"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: kms | Quota: DescribeKey request rate"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "DescribeKey"
        "Service"  = "KMS"
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

###########################################################################


###########################################################################
resource "aws_cloudwatch_metric_alarm" "createloggroup-throttle-limit-in-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: logs | Quota: CreateLogGroup throttle limit in transactions per second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: logs | Quota: CreateLogGroup throttle limit in transactions per second"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "CreateLogGroup"
        "Service"  = "Logs"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "describeloggroups-throttle-limit-in-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: logs | Quota: DescribeLogGroups throttle limit in transactions per second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: logs | Quota: DescribeLogGroups throttle limit in transactions per second"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "DescribeLogGroups"
        "Service"  = "Logs"
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

###########################################################################


###########################################################################
resource "aws_cloudwatch_metric_alarm" "describelogstreams-throttle-limit-in-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: logs | Quota: DescribeLogStreams throttle limit in transactions per second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: logs | Quota: DescribeLogStreams throttle limit in transactions per second"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "DescribeLogStreams"
        "Service"  = "Logs"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "createlogstream-throttle-limit-in-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: logs | Quota: CreateLogStream throttle limit in transactions per second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: logs | Quota: CreateLogStream throttle limit in transactions per second"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "CreateLogStream"
        "Service"  = "Logs"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "putlogevents-throttle-limit-in-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: logs | Quota: PutLogEvents throttle limit in transactions per second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: logs | Quota: PutLogEvents throttle limit in transactions per second"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "PutLogEvents"
        "Service"  = "Logs"
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

###########################################################################


###########################################################################
resource "aws_cloudwatch_metric_alarm" "rate-of-getmetricdata-requests" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: monitoring | Quota: Rate of GetMetricData requests"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: monitoring | Quota: Rate of GetMetricData requests"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "GetMetricData"
        "Service"  = "CloudWatch"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "rate-of-getmetricstatistics-requests" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: monitoring | Quota: Rate of GetMetricStatistics requests"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: monitoring | Quota: Rate of GetMetricStatistics requests"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "GetMetricStatistics"
        "Service"  = "CloudWatch"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "rate-of-putmetricdata-requests" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: monitoring | Quota: Rate of PutMetricData requests"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: monitoring | Quota: Rate of PutMetricData requests"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "PutMetricData"
        "Service"  = "CloudWatch"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "rate-of-describealarms-requests" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: monitoring | Quota: Rate of DescribeAlarms requests"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: monitoring | Quota: Rate of DescribeAlarms requests"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "DescribeAlarms"
        "Service"  = "CloudWatch"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "number-of-contributor-insights-rules" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: monitoring | Quota: Number of Contributor Insights rules"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: monitoring | Quota: Number of Contributor Insights rules"
  insufficient_data_actions = []
  metric_name               = null
  namespace                 = null
  ok_actions                = []
  #period                                = 0
  statistic = null
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
        "Resource" = "InsightRule"
        "Service"  = "CloudWatch"
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

###########################################################################
resource "aws_cloudwatch_metric_alarm" "parameter-groups" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: rds | Quota: Parameter groups"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods  = var.evaluation_periods
  extended_statistic  = null
  insufficient_data_actions = []
  metric_name         = null
  namespace           = null
  ok_actions          = []
  statistic           = null
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
        "Resource" = "DBParameterGroups"
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
    return_data = true
  }
}

###########################################################################
resource "aws_cloudwatch_metric_alarm" "read-replicas-per-primary" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: rds | Quota: Read replicas per primary"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods  = var.evaluation_periods
  extended_statistic  = null
  insufficient_data_actions = []
  metric_name         = null
  namespace           = null
  ok_actions          = []
  statistic           = null
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
        "Resource" = "ReadReplicasPerMaster"
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
    return_data = true
  }
}

###########################################################################

###########################################################################
resource "aws_cloudwatch_metric_alarm" "db-subnet-groups" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: rds | Quota: DB subnet groups"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods  = var.evaluation_periods
  extended_statistic  = null
  insufficient_data_actions = []
  metric_name         = null
  namespace           = null
  ok_actions          = []
  statistic           = null
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
        "Resource" = "DBSubnetGroups"
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
    return_data = true
  }
}

###########################################################################
resource "aws_cloudwatch_metric_alarm" "db-instances" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: rds | Quota: DB instances"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

  metric_query {
    id          = "usage_data"
    account_id  = null
    expression  = null
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        Class    = "None"
        Resource = "DBInstances"
        Service  = "RDS"
        Type     = "Resource"
      }
      metric_name = "ResourceCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Maximum"
      unit        = null
    }
  }

  metric_query {
    id          = "pct_utilization"
    account_id  = null
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    label       = "% Utilization"
    return_data = true
  }
}
###########################################################################
resource "aws_cloudwatch_metric_alarm" "manual-db-instance-snapshots" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: rds | Quota: Manual DB instance snapshots"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods  = var.evaluation_periods
  extended_statistic  = null
  insufficient_data_actions = []
  metric_name         = null
  namespace           = null
  ok_actions          = []
  statistic           = null
  threshold           = var.threshold
  threshold_metric_id = null
  treat_missing_data  = var.treat_missing_data
  unit                = null

  metric_query {
    account_id = null
    expression = null
    id         = "usage_data"
    label      = null
    period     = 0
    return_data = false

    metric {
      dimensions = {
        "Class"    = "None"
        "Resource" = "ManualSnapshots"
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
    return_data = true
  }
}


###########################################################################
resource "aws_cloudwatch_metric_alarm" "messages-published-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: sns | Quota: Messages Published per Second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

  metric_query {
    account_id  = null
    expression  = null
    id          = "usage_data"
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        Class    = "None"
        Resource = "NumberOfMessagesPublishedPerAccount"
        Service  = "SNS"
        Type     = "Resource"
      }
      metric_name = "ResourceCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Sum"
      unit        = null
    }
  }

  metric_query {
    account_id  = null
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id          = "pct_utilization"
    label       = "% Utilization"
    return_data = true
  }
}
###########################################################################


###########################################################################


###########################################################################

resource "aws_cloudwatch_metric_alarm" "gettopicattributes-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: sns | Quota: GetTopicAttributes Transactions per Second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

  metric_query {
    account_id  = null
    expression  = null
    id          = "usage_data"
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        Class    = "None"
        Resource = "GetTopicAttributes"
        Service  = "SNS"
        Type     = "API"
      }
      metric_name = "CallCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Sum"
      unit        = null
    }
  }

  metric_query {
    account_id  = null
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id          = "pct_utilization"
    label       = "% Utilization"
    return_data = true
  }
}
###########################################################################


###########################################################################

resource "aws_cloudwatch_metric_alarm" "ssm-managed-node-fleet-size" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Systems Manager managed node fleet size"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

  metric_query {
    account_id  = null
    expression  = null
    id          = "usage_data"
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        Class    = "None"
        Resource = "UpdateInstanceInformation"
        Service  = "SSM"
        Type     = "API"
      }
      metric_name = "CallCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Sum"
      unit        = null
    }
  }

  metric_query {
    account_id  = null
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id          = "pct_utilization"
    label       = "% Utilization"
    return_data = true
  }
}

###########################################################################


###########################################################################
resource "aws_cloudwatch_metric_alarm" "concurrently-executing-rate-control-automation" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Concurrently executing rate control automation"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

  metric_query {
    account_id  = null
    expression  = null
    id          = "usage_data"
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        Class    = "None"
        Resource = "ParentConcurrentAutomationUsage"
        Service  = "SSM"
        Type     = "Resource"
      }
      metric_name = "ResourceCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Maximum"
      unit        = null
    }
  }

  metric_query {
    account_id  = null
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id          = "pct_utilization"
    label       = "% Utilization"
    return_data = true
  }
}

###########################################################################


###########################################################################


###########################################################################
resource "aws_cloudwatch_metric_alarm" "describe-instance-node-info-rate" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Describe instance (node) information rate"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

  metric_query {
    id          = "usage_data"
    account_id  = null
    expression  = null
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        Class    = "None"
        Resource = "DescribeInstanceProperties"
        Service  = "SSM"
        Type     = "API"
      }
      metric_name = "CallCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Sum"
      unit        = null
    }
  }

  metric_query {
    id          = "pct_utilization"
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    label       = "% Utilization"
    return_data = true
    account_id  = null
  }
}

###########################################################################
resource "aws_cloudwatch_metric_alarm" "concurrently-executing-automations" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Concurrently executing Automations"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

  metric_query {
    id          = "usage_data"
    account_id  = null
    expression  = null
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        Class    = "None"
        Resource = "ConcurrentAutomationUsage"
        Service  = "SSM"
        Type     = "Resource"
      }
      metric_name = "ResourceCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Maximum"
      unit        = null
    }
  }

  metric_query {
    id          = "pct_utilization"
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    label       = "% Utilization"
    return_data = true
    account_id  = null
  }
}

###########################################################################


###########################################################################
resource "aws_cloudwatch_metric_alarm" "startautomationexecution-tps" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Transactions per second (TPS) for the StartAutomationExecution API"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

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
        "Resource" = "StartAutomationExecution"
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
    account_id  = null
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id          = "pct_utilization"
    label       = "% Utilization"
    return_data = true
  }
}

###########################################################################
resource "aws_cloudwatch_metric_alarm" "rate-of-getparameter-requests" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Rate of GetParameter requests"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

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
        "Resource" = "GetParameter"
        "Service"  = "SSM"
        "Type"     = "API"
      }
      metric_name = "CallCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Maximum"
      unit        = null
    }
  }

  metric_query {
    account_id  = null
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id          = "pct_utilization"
    label       = "% Utilization"
    return_data = true
  }
}

###########################################################################
resource "aws_cloudwatch_metric_alarm" "rate-of-describeparameters-requests" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Rate of DescribeParameters requests"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

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
        "Resource" = "DescribeParameters"
        "Service"  = "SSM"
        "Type"     = "API"
      }
      metric_name = "CallCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Maximum"
      unit        = null
    }
  }

  metric_query {
    account_id  = null
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id          = "pct_utilization"
    label       = "% Utilization"
    return_data = true
  }
}

###########################################################################
resource "aws_cloudwatch_metric_alarm" "maximum-webacls-per-account-regional" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: wafv2 | Quota: Maximum web ACLs per account in WAF for regional"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

  metric_query {
    account_id  = null
    expression  = null
    id          = "usage_data"
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        Class    = "None"
        Resource = "WebAclsPerAccountRegional"
        Service  = "AWS WAF"
        Type     = "Resource"
      }
      metric_name = "ResourceCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Maximum"
      unit        = null
    }
  }

  metric_query {
    account_id  = null
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id          = "pct_utilization"
    label       = "% Utilization"
    return_data = true
  }
}

###########################################################################
resource "aws_cloudwatch_metric_alarm" "maximum-regex-pattern-sets-per-account-regional" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: wafv2 | Quota: Maximum regex pattern sets per account in WAF for regional"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = null
  namespace                             = null
  ok_actions                            = []
  statistic                             = null
  threshold                             = var.threshold
  threshold_metric_id                   = null
  treat_missing_data                    = var.treat_missing_data
  unit                                  = null

  metric_query {
    account_id  = null
    expression  = null
    id          = "usage_data"
    label       = null
    period      = 0
    return_data = false

    metric {
      dimensions = {
        Class    = "None"
        Resource = "RegexPatternSetsPerAccountRegional"
        Service  = "AWS WAF"
        Type     = "Resource"
      }
      metric_name = "ResourceCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Maximum"
      unit        = null
    }
  }

  metric_query {
    account_id  = null
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    id          = "pct_utilization"
    label       = "% Utilization"
    return_data = true
  }
}

###########################################################################

###########################################################################

###########################################################################



