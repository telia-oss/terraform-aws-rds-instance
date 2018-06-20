# ------------------------------------------------------------------------------
# Output
# ------------------------------------------------------------------------------
output "id" {
  description = "The RDS Instance Identifier."
  value       = "${aws_db_instance.main.id}"
}

output "endpoint" {
  description = "The DNS address of the RDS instance."
  value       = "${aws_db_instance.main.endpoint}"
}

output "postgres_connection_string" {
  description = "PostgreSQL connection string."
  value       = "postgres://${var.username}:${var.password}@${aws_db_instance.main.address}:${var.port}/main"
}

output "port" {
  description = "The port on which the DB accepts connections."
  value       = "${aws_db_instance.main.port}"
}

output "database_name" {
  description = "Name for the automatically created database."
  value       = "${aws_db_instance.main.name}"
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
