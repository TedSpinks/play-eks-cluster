# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "cluster_name" {
  description = "Name for your EKS cluster and related resources"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9-]*$", var.cluster_name))
    error_message = "Variable must contain only lowercase alphanumeric characters."
  }
}
