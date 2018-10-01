# ------------------------------------------------------------------------------
# Output
# ------------------------------------------------------------------------------
output "id" {
  description = "The RDS Instance Identifier."
  value       = "${aws_db_instance.main.id}"
}

output "resource_id" {
  description = "The RDS Resource ID of this instance"
  value       = "${aws_db_instance.main.resource_id}"
}

output "arn" {
  description = "The ARN of the RDS instance"
  value       = "${aws_db_instance.main.arn}"
}

output "security_group_id" {
  description = "The ID of the security group."
  value       = "${aws_security_group.main.id}"
}

output "subnet_group_id" {
  description = "The db subnet group name."
  value       = "${aws_db_subnet_group.main.id}"
}

output "subnet_group_arn" {
  description = "The ARN of the db subnet group."
  value       = "${aws_db_subnet_group.main.arn}"
}

output "endpoint" {
  description = "The hostname of the RDS instance."
  value       = "${aws_db_instance.main.address}"
}

output "port" {
  description = "The database port."
  value       = "${aws_db_instance.main.port}"
}

output "username" {
  description = "Username for the master DB user."
  value       = "${aws_db_instance.main.username}"
}

output "database_name" {
  description = "The database name."
  value       = "${aws_db_instance.main.name}"
}
