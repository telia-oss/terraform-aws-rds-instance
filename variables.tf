# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------

variable "apply_immediately" {
  type        = "string"
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window"
  default     = "false"
}

variable "name_prefix" {
  description = "A prefix used for naming resources."
}

variable "vpc_id" {
  description = "The VPC ID."
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs."
  type        = "list"
}

variable "username" {
  description = "Username for the master DB user."
}

variable "password" {
  description = "Password for the master DB user."
}

variable "database_name" {
  description = "Name for an automatically created database on instance creation."
  default     = "main"
}

variable "deletion_protection" {
  description = "If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true."
  default     = false
}

variable "port" {
  description = "The port on which the DB accepts connections."
  default     = "5439"
}

variable "engine" {
  description = "The name of the database engine to be used for this DB instance."
  default     = "postgres"
}

variable "engine_version" {
  description = "The engine version to use."
  default     = ""
}

variable "instance_type" {
  description = "The DB instance class to use."
  default     = "db.m3.medium"
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes."
  default     = "50"
}

variable "publicly_accessible" {
  description = "Bool to control if instances is publicly accessible."
  default     = "false"
}

variable "monitoring_interval" {
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60."
  default     = 0
}

variable "snapshot_identifier" {
  description = "Specifies whether or not to create this instance from a snapshot."
  default     = ""
}

variable "license_model" {
  description = "License model information for this DB instance. Optional, but required for some DB engines, i.e. Oracle SE1"
  default     = ""
}

variable "maintenance_window" {
  description = "The window to perform maintenance in. Syntax: 'ddd:hh24:mi-ddd:hh24:mi'. Eg: 'Mon:00:00-Mon:03:00'"
  default     = "Sun:05:00-Sun:06:00"
}

variable "backup_window" {
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled. Example: '09:46-10:16'. Must not overlap with maintenance_window"
  default     = "02:00-04:00"
}

variable "backup_retention_period" {
  description = "The days to retain backups for"
  default     = 1
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted. If true is specified, no DB snapshot is created."
  default     = "true"
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ."
  default     = "true"
}

variable "tags" {
  description = "A map of tags (key-value pairs) passed to resources."
  type        = "map"
  default     = {}
}

variable "option_group_name" {
  description = "Name of the DB option group to associate."
  default     = ""
}

variable "parameter_group_name" {
  description = "Name of the DB parameter group to associate"
  default     = ""
}

variable "monitoring_role_arn" {
  description = "The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to CloudWatch Logs"
  default     = ""
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted."
  default     = "true"
}

variable "kms_key_id" {
  description = "The ARN for the KMS encryption key. If creating an encrypted replica, set this to the destination KMS ARN."
  default     = ""
}
