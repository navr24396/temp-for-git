#!/bin/bash

for service in $(aws service-quotas list-services --query 'Services[].ServiceCode' --output text); do
    aws service-quotas list-service-quotas \
        --service-code "$service" \
        --query 'Quotas[?UsageMetric].[QuotaName, ServiceCode, ServiceName, UsageMetric]' \
        --output yaml
done
