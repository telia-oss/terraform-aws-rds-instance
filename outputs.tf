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

output "subnet_group_arn" {
  description = "The ARN of the db subnet group."
  value       = "${aws_db_subnet_group.main.arn}"
}

output "subnet_group_id" {
  description = "The db subnet group name."
  value       = "${aws_db_subnet_group.main.id}"
}

output "address" {
  description = "The address of the RDS instance"
  value       = "${aws_db_instance.main.address}"
}

output "arn" {
  description = "The ARN of the RDS instance"
  value       = "${aws_db_instance.main.arn}"
}

output "availability_zone" {
  description = "The availability zone of the RDS instance"
  value       = "${aws_db_instance.main.availability_zone}"
}

output "zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)"
  value       = "${aws_db_instance.main.hosted_zone_id}"
}

output "resource_id" {
  description = "The RDS Resource ID of this instance"
  value       = "${aws_db_instance.main.resource_id}"
}

output "username" {
  description = "The master username for the database"
  value       = "${aws_db_instance.main.username}"
}
