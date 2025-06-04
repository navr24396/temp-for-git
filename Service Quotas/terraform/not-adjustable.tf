resource "aws_cloudwatch_metric_alarm" "throttle-rate-limit-for-liststackresources" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: cloudformation | Quota: Throttle rate limit for ListStackResources"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: cloudformation | Quota: Throttle rate limit for ListStackResources"
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
        "Resource" = "ListStackResources"
        "Service"  = "CloudFormation"
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

resource "aws_cloudwatch_metric_alarm" "throttle-rate-limit-for-describeaccountlimits" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: cloudformation | Quota: Throttle rate limit for DescribeAccountLimits"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: cloudformation | Quota: Throttle rate limit for DescribeAccountLimits"
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
        "Resource" = "DescribeAccountLimits"
        "Service"  = "CloudFormation"
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
resource "aws_cloudwatch_metric_alarm" "throttle-rate-limit-for-describestacks" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: cloudformation | Quota: Throttle rate limit for DescribeStacks"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: cloudformation | Quota: Throttle rate limit for DescribeStacks"
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
        "Resource" = "DescribeStacks"
        "Service"  = "CloudFormation"
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
resource "aws_cloudwatch_metric_alarm" "throttle-rate-limit-for-liststacks" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: cloudformation | Quota: Throttle rate limit for ListStacks"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: cloudformation | Quota: Throttle rate limit for ListStacks"
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
        "Resource" = "ListStacks"
        "Service"  = "CloudFormation"
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
resource "aws_cloudwatch_metric_alarm" "transactions-per-second-tps-for-the-lookupevents-api" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: cloudtrail | Quota: Transactions per second (TPS) for the LookupEvents API"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: cloudtrail | Quota: Transactions per second (TPS) for the LookupEvents API"
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
        "Resource" = "LookupEvents"
        "Service"  = "CloudTrail"
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
resource "aws_cloudwatch_metric_alarm" "trails-per-region" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: cloudtrail | Quota: Trails per region"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: cloudtrail | Quota: Trails per region"
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
        "Resource" = "Trail"
        "Service"  = "CloudTrail"
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
resource "aws_cloudwatch_metric_alarm" "target-groups-per-application-load-balancer" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Target Groups per Application Load Balancer"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Target Groups per Application Load Balancer"
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
        "Resource" = "TargetGroupsPerApplicationLoadBalancer"
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
resource "aws_cloudwatch_metric_alarm" "condition-values-per-rule" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Condition Values per Rule"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Condition Values per Rule"
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
        "Resource" = "ConditionValuesPerRule"
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
resource "aws_cloudwatch_metric_alarm" "condition-wildcards-per-rule" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Condition Wildcards per Rule"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Condition Wildcards per Rule"
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
        "Resource" = "ConditionWildcardsPerRule"
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
resource "aws_cloudwatch_metric_alarm" "target-groups-per-action-per-application-load-balancer" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Target Groups per Action per Application Load Balancer"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Target Groups per Action per Application Load Balancer"
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
        "Resource" = "TargetGroupsPerActionPerApplicationLoadBalancer"
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
resource "aws_cloudwatch_metric_alarm" "listeners-per-network-load-balancer" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: elasticloadbalancing | Quota: Listeners per Network Load Balancer"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: elasticloadbalancing | Quota: Listeners per Network Load Balancer"
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
        "Resource" = "ListenersPerNetworkLoadBalancer"
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
resource "aws_cloudwatch_metric_alarm" "putretentionpolicy-throttle-limit-in-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: logs | Quota: PutRetentionPolicy throttle limit in transactions per second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: logs | Quota: PutRetentionPolicy throttle limit in transactions per second"
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
        "Resource" = "PutRetentionPolicy"
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
resource "aws_cloudwatch_metric_alarm" "filterlogevents-throttle-limit-in-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: logs | Quota: FilterLogEvents throttle limit in transactions per second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: logs | Quota: FilterLogEvents throttle limit in transactions per second"
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
        "Resource" = "FilterLogEvents"
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
resource "aws_cloudwatch_metric_alarm" "describemetricfilters-throttle-limit-in-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: logs | Quota: DescribeMetricFilters throttle limit in transactions per second"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  ##dimensions                            = {}
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = var.evaluation_periods
  extended_statistic                    = null
  #id                                    = "Service: logs | Quota: DescribeMetricFilters throttle limit in transactions per second"
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
        "Resource" = "DescribeMetricFilters"
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
resource "aws_cloudwatch_metric_alarm" "subnets-per-db-subnet-group" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: rds | Quota: Subnets per DB subnet group"
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
        Resource = "SubnetsPerDBSubnetGroup"
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
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    label       = "% Utilization"
    account_id  = null
    return_data = true
  }
}
###########################################################################
resource "aws_cloudwatch_metric_alarm" "listawsdefaultservicequotas" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: servicequotas | Quota: Throttle rate for ListAWSDefaultServiceQuotas"
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
    id          = "usage_data"
    return_data = false

    metric {
      dimensions = {
        "Class"    = "None"
        "Resource" = "ListAWSDefaultServiceQuotas"
        "Service"  = "Service Quotas"
        "Type"     = "API"
      }
      metric_name = "CallCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Sum"
    }
  }

  metric_query {
    id          = "pct_utilization"
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    return_data = true
    label       = "% Utilization"
  }
}
###########################################################################
resource "aws_cloudwatch_metric_alarm" "listservicequotas" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: servicequotas | Quota: Throttle rate for ListServiceQuotas"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluation_periods  = var.evaluation_periods
  treat_missing_data  = var.treat_missing_data
  threshold           = var.threshold
  statistic           = null
  extended_statistic  = null
  ok_actions          = []
  insufficient_data_actions = []
  metric_name         = null
  namespace           = null
  unit                = null
  threshold_metric_id = null
  evaluate_low_sample_count_percentiles = null

  metric_query {
    id          = "usage_data"
    expression  = null
    label       = null
    period      = 0
    return_data = false

    metric {
      metric_name = "CallCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Sum"
      unit        = null
      dimensions = {
        "Class"    = "None"
        "Resource" = "ListServiceQuotas"
        "Service"  = "Service Quotas"
        "Type"     = "API"
      }
    }
  }

  metric_query {
    id          = "pct_utilization"
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    label       = "% Utilization"
    return_data = true
  }
}
###########################################################################
resource "aws_cloudwatch_metric_alarm" "getservicequota" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: servicequotas | Quota: Throttle rate for GetServiceQuota"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluation_periods  = var.evaluation_periods
  treat_missing_data  = var.treat_missing_data
  threshold           = var.threshold

  metric_query {
    id          = "usage_data"
    return_data = false
    period      = 0
    expression  = null
    label       = null

    metric {
      metric_name = "CallCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Sum"
      unit        = null
      dimensions = {
        "Class"    = "None"
        "Resource" = "GetServiceQuota"
        "Service"  = "Service Quotas"
        "Type"     = "API"
      }
    }
  }

  metric_query {
    id          = "pct_utilization"
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    label       = "% Utilization"
    return_data = true
  }
}
###########################################################################
resource "aws_cloudwatch_metric_alarm" "getawsdefaultservicequota" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: servicequotas | Quota: Throttle rate for GetAWSDefaultServiceQuota"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluation_periods  = var.evaluation_periods
  treat_missing_data  = var.treat_missing_data
  threshold           = var.threshold

  metric_query {
    id          = "usage_data"
    return_data = false
    period      = 0

    metric {
      metric_name = "CallCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Sum"
      unit        = null
      dimensions = {
        "Class"    = "None"
        "Resource" = "GetAWSDefaultServiceQuota"
        "Service"  = "Service Quotas"
        "Type"     = "API"
      }
    }
  }

  metric_query {
    id          = "pct_utilization"
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    label       = "% Utilization"
    return_data = true
  }
}
###########################################################################
resource "aws_cloudwatch_metric_alarm" "listservices" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: servicequotas | Quota: Throttle rate for ListServices"
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluation_periods  = var.evaluation_periods
  treat_missing_data  = var.treat_missing_data
  threshold           = var.threshold

  metric_query {
    id          = "usage_data"
    return_data = false
    period      = 0

    metric {
      metric_name = "CallCount"
      namespace   = "AWS/Usage"
      period      = 60
      stat        = "Sum"
      unit        = null
      dimensions = {
        "Class"    = "None"
        "Resource" = "ListServices"
        "Service"  = "Service Quotas"
        "Type"     = "API"
      }
    }
  }

  metric_query {
    id          = "pct_utilization"
    expression  = "(usage_data/SERVICE_QUOTA(usage_data))*100"
    label       = "% Utilization"
    return_data = true
  }
}
###########################################################################
resource "aws_cloudwatch_metric_alarm" "listtagsforresource-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: sns | Quota: ListTagsForResource Transactions per Second"
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
        Resource = "ListTagsForResource"
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
resource "aws_cloudwatch_metric_alarm" "listtopics-transactions-per-second" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: sns | Quota: ListTopics Transactions per Second"
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
        Resource = "ListTopics"
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
resource "aws_cloudwatch_metric_alarm" "getautomationexecution-api-tps" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Transactions per second (TPS) for the GetAutomationExecution API"
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
        Resource = "GetAutomationExecution"
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
resource "aws_cloudwatch_metric_alarm" "getdeployablepatchsnapshotforinstance-tps" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Transactions per second (TPS) for the GetDeployablePatchSnapshotForInstance API"
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
        Resource = "GetDeployablePatchSnapshotForInstance"
        Service  = "SSM"
        Type     = "API"
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
resource "aws_cloudwatch_metric_alarm" "putcomplianceitems-tps" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Transactions per second (TPS) for the PutComplianceItems API"
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
        Resource = "PutComplianceItems"
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
resource "aws_cloudwatch_metric_alarm" "standard-parameters" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Standard parameters"
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
        Resource = "StandardParameterCount"
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
resource "aws_cloudwatch_metric_alarm" "describeassociation-tps" {
  actions_enabled     = true
  alarm_actions       = [local.sns_arn]
  alarm_description   = var.alarm_description
  alarm_name          = "Service: ssm | Quota: Transactions per second (TPS) for the DescribeAssociation API"
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
        Resource = "DescribeAssociation"
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

