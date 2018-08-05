# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
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

variable "snapshot_identifier" {
  description = "Specifies whether or not to create this instance from a snapshot."
  default     = ""
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
