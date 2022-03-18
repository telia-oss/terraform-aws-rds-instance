# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window"
  type        = bool
  default     = false
}

variable "name_prefix" {
  description = "A prefix used for naming resources."
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID."
  type        = string
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs."
  type        = list(string)
}

variable "username" {
  description = "Username for the master DB user."
  type        = string
}

variable "password" {
  description = "Password for the master DB user."
  type        = string
}

variable "database_name" {
  description = "Name for an automatically created database on instance creation."
  type        = string
  default     = "main"
}

variable "deletion_protection" {
  description = "If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true."
  type        = bool
  default     = false
}

variable "port" {
  description = "The port on which the DB accepts connections."
  type        = number
  default     = 5439
}

variable "engine" {
  description = "The name of the database engine to be used for this DB instance."
  type        = string
  default     = "postgres"
}

variable "engine_version" {
  description = "The engine version to use."
  type        = string
  default     = null
}

variable "instance_type" {
  description = "The DB instance class to use."
  type        = string
  default     = "db.t3.medium"
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes."
  type        = number
  default     = 50
}

variable "publicly_accessible" {
  description = "Bool to control if instances is publicly accessible."
  type        = bool
  default     = false
}

variable "monitoring_interval" {
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60."
  type        = number
  default     = 0
}

variable "snapshot_identifier" {
  description = "Specifies whether or not to create this instance from a snapshot."
  type        = string
  default     = null
}

variable "license_model" {
  description = "License model information for this DB instance. Optional, but required for some DB engines, i.e. Oracle SE1"
  type        = string
  default     = null
}

variable "maintenance_window" {
  description = "The window to perform maintenance in. Syntax: 'ddd:hh24:mi-ddd:hh24:mi'. Eg: 'Mon:00:00-Mon:03:00'"
  type        = string
  default     = "Sun:05:00-Sun:06:00"
}

variable "backup_window" {
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled. Example: '09:46-10:16'. Must not overlap with maintenance_window"
  type        = string
  default     = "02:00-04:00"
}

variable "backup_retention_period" {
  description = "The days to retain backups for"
  type        = number
  default     = 1
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted. If true is specified, no DB snapshot is created."
  type        = bool
  default     = true
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags (key-value pairs) passed to resources."
  type        = map(string)
  default     = {}
}

variable "option_group_name" {
  description = "Name of the DB option group to associate."
  type        = string
  default     = null
}

variable "parameter_group_name" {
  description = "Name of the DB parameter group to associate"
  type        = string
  default     = null
}

variable "monitoring_role_arn" {
  description = "The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to CloudWatch Logs"
  type        = string
  default     = null
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted."
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "The ARN for the KMS encryption key. If creating an encrypted replica, set this to the destination KMS ARN."
  type        = string
  default     = null
}

variable "ca_cert_identifier" {
  description = "Specifies the identifier of the CA certificate for the DB instance."
  type        = string
  default     = "rds-ca-2019"
}

variable "domain" {
  description = "The ID of the Directory Service Active Directory domain to create the instance in"
  type        = string
  default     = null
}

variable "domain_iam_role_name" {
  description = "(Required if domain is provided) The name of the IAM role to be used when making API calls to the Directory Service"
  type        = string
  default     = null
}

variable "iam_database_authentication_enabled" {
  description = "Specifies whether or mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled"
  type        = bool
  default     = false
}

variable "replicate_source_db" {
  description = "Specifies that this resource is a Replicate database, and to use this value as the source database. This correlates to the identifier of another Amazon RDS Database to replicate."
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "The Availability Zone of the RDS instance"
  type        = string
  default     = null
}

variable "storage_type" {
  description = "One of 'standard' (magnetic), 'gp2' (general purpose SSD), or 'io1' (provisioned IOPS SSD). The default is 'io1' if iops is specified, 'standard' if not. Note that this behaviour is different from the AWS web console, where the default is 'gp2'."
  type        = string
  default     = "gp2"
}

variable "allow_major_version_upgrade" {
  description = "Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible"
  type        = bool
  default     = false
}

variable "iops" {
  description = "The amount of provisioned IOPS. Setting this implies a storage_type of 'io1'"
  type        = number
  default     = 0
}

variable "auto_minor_version_upgrade" {
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
  type        = bool
  default     = true
}

variable "copy_tags_to_snapshot" {
  description = "On delete, copy all Instance tags to the final snapshot (if final_snapshot_identifier is specified)"
  type        = bool
  default     = false
}

variable "max_allocated_storage" {
  description = "Specifies the value for Storage Autoscaling"
  type        = number
  default     = 0
}

variable "performance_insights_enabled" {
  description = "Specifies whether Performance Insights are enabled"
  type        = bool
  default     = false
}

variable "performance_insights_retention_period" {
  description = "The amount of time in days to retain Performance Insights data. Either 7 (7 days) or 731 (2 years)."
  type        = number
  default     = 7
}

variable "character_set_name" {
  description = "(Optional) The character set name to use for DB encoding in Oracle instances. This can't be changed. See Oracle Character Sets Supported in Amazon RDS for more information"
  type        = string
  default     = null
}

variable "enabled_cloudwatch_logs_exports" {
  description = "List of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. Valid values (depending on engine): alert, audit, error, general, listener, slowquery, trace, postgresql (PostgreSQL), upgrade (PostgreSQL)."
  type        = list(string)
  default     = []
}

variable "delete_automated_backups" {
  description = "Specifies whether to remove automated backups immediately after the DB instance is deleted"
  type        = bool
  default     = true
}
