variable "account_id" {
  type = map(string)
  default = {
    "test"    = "797728447925"
    "notprod" = "483846886818"
    "prod"    = "337779336338"
  }
}

variable "naming_suffix" {
  default     = false
  description = "Naming suffix for tags, value passed from dq-tf-apps"
}

variable "http_from_port" {
  default     = 80
  description = "From port for HTTPS traffic"
}

variable "http_to_port" {
  default     = 80
  description = "To port for HTTPS traffic"
}

variable "http_protocol" {
  default     = "tcp"
  description = "Protocol for HTTPS traffic"
}

variable "SSH_from_port" {
  default     = 22
  description = "From port for SSH traffic"
}

variable "SSH_to_port" {
  default     = 22
  description = "To port for SSH traffic"
}

variable "SSH_protocol" {
  default     = "tcp"
  description = "Protocol for SSH traffic"
}

variable "TSM_from_port" {
  default     = 8850
  description = "From port for TSM traffic"
}

variable "TSM_to_port" {
  default     = 8850
  description = "To port for TSM traffic"
}

variable "TAB_DB_from_port" {
  default     = 8060
  description = "From port for Tableau Metadata Database traffic"
}

variable "TAB_DB_to_port" {
  default     = 8060
  description = "To port for Tableau Metadata Database traffic"
}

variable "TAB_DB_protocol" {
  default     = "tcp"
  description = "Protocol for Tableau Metadata Database traffic"
}

variable "rds_from_port" {
  default     = 5432
  description = "From port for Postgres traffic"
}

variable "rds_to_port" {
  default     = 5432
  description = "To port for Postgres traffic"
}

variable "rds_protocol" {
  default     = "tcp"
  description = "Protocol for Postgres traffic"
}

variable "acp_prod_ingress_cidr" {
  default     = "10.5.0.0/16"
  description = "ACP Prod CIDR as per IP Addresses and CIDR blocks document"
}

variable "dq_ops_ingress_cidr" {
  default     = "10.2.0.0/16"
  description = "DQ Ops CIDR as per IP Addresses and CIDR blocks document"
}

variable "peering_cidr_block" {
  default     = "10.3.0.0/16"
  description = "DQ Peering CIDR as per IP Addresses and CIDR blocks document"
}

variable "dq_internal_dashboard_subnet_cidr" {
  default     = "10.1.12.0/24"
  description = "DQ Apps CIDR as per IP Addresses and CIDR blocks document"
}

variable "dq_internal_dashboard_subnet_cidr_az2" {
  default     = "10.1.13.0/24"
  description = "DQ Apps CIDR as per IP Addresses and CIDR blocks document"
}

variable "dq_external_dashboard_subnet_cidr" {
  default     = "10.1.14.0/24"
  description = "DQ Apps CIDR as per IP Addresses and CIDR blocks document"
}

variable "dq_internal_dashboard_instance_ip" {
  description = "IP address of EC2 instance"
  type        = list(string)
  default     = ["10.1.12.111", "10.1.12.112", "10.1.12.113", "10.1.12.114"]
}

variable "dq_lambda_subnet_cidr" {
  default     = "10.1.42.0/24"
  description = "Dedicated subnet for Lambda ENIs"
}

variable "dq_lambda_subnet_cidr_az2" {
  default     = "10.1.43.0/24"
  description = "Dedicated subnet for Lambda ENIs"
}

variable "apps_vpc_id" {
  default     = false
  description = "Value obtained from Apps module"
}

variable "route_table_id" {
  default     = false
  description = "Value obtained from Apps module"
}

variable "az" {
  default     = "eu-west-2a"
  description = "Default availability zone for the subnet."
}

variable "az2" {
  default     = "eu-west-2b"
  description = "Default availability zone for the subnet."
}

variable "key_name" {
  default = "test_instance"
}

variable "s3_archive_bucket" {
  description = "S3 archive bucket name"
}

variable "s3_archive_bucket_key" {
  description = "S3 archive bucket KMS key"
}

variable "s3_archive_bucket_name" {
  description = "Name of archive bucket"
}

variable "haproxy_private_ip" {
  description = "IP of HaProxy 1"
}

variable "haproxy_private_ip2" {
  description = "IP of HaProxy 2"
}

variable "database_name" {
  default     = "internal_tableau"
  description = "RDS Postgres database name"
}

variable "port" {
  default     = "5432"
  description = "RDS Postgres port access"
}

variable "environment" {
  default     = "test"
  description = "Switch between environments"
}

variable "s3_httpd_config_bucket" {
  description = "HTTPD config bucket ID"
}

variable "s3_httpd_config_bucket_key" {
  description = "HTTPD config bucket KMS Key ARN"
}

variable "dq_internal_staging_dashboard_instance_ip" {
  description = "IP address of Tab STG EC2 instance"
  type        = list(string)
  default     = ["10.1.12.115", "10.1.12.116", "10.1.12.117", "10.1.12.118"]
}

variable "security_group_ids" {
  description = "Lambda security group ID"
}

variable "lambda_subnet" {
  description = "Lambda subnet ID"
}

variable "lambda_subnet_az2" {
  description = "Lambda subnet ID"
}

variable "rds_enhanced_monitoring_role" {
  description = "ARN of the RDS enhanced monitoring role"
}

# variable "region" {
#   default = "eu-west-2"
# }
#
# variable "account_id" {
#   type = map(string)
#   default = {
#     "notprod" = "483846886818"
#     "prod"    = "337779336338"
#   }
# }
#
# variable "kms_key_s3" {
#   type        = map(string)
#   description = "The ARN of the KMS key that is used to encrypt S3 buckets"
#   default = {
#     notprod = "arn:aws:kms:eu-west-2:483846886818:key/24b0cd4f-3117-4e9b-ada8-fa46e7fd6d70"
#     prod    = "arn:aws:kms:eu-west-2:337779336338:key/ae75113d-f4f6-49c6-a15e-e8493fda0453"
#   }
# }
#
# locals {
#   path_module = var.path_module != "unset" ? var.path_module : path.module
# }
#

############################
#Cloudwatch Alarm variables#
############################

variable "pipeline_name" {
  default = "internal-tableau-alarms"
}

variable "swap_alarm" {
  description = "Switch to turn off Swap monitoring (required for MSSQL). Accepted values are 'false' to turn off and 'true' to excplicitly turn on"
  default     = "true"
}

variable "path_module" {
  default = "unset"
}

variable "ec2_instance_id_0" {
  default     = "aws_instance.ext_tableau_linux[0]"
  description = "The instance ID of the RDS database instance that you want to monitor."
  type        = string
}

variable "cpu_utilization_threshold" {
  description = "The maximum percentage of CPU utilization."
  type        = string
  default     = 80
}

variable "available_memory_threshold" {
  description = "The percentage of available memory."
  type        = string
  default     = 20
}

variable "used_storage_space_threshold" {
  description = "The minimum amount of available storage space in Byte."
  type        = string
  default     = 80
}
