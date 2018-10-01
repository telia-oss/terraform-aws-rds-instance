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

output "availability_zone" {
  description = "The availability zone of the RDS instance"
  value       = "${aws_db_instance.main.availability_zone}"
}

output "zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)"
  value       = "${aws_db_instance.main.hosted_zone_id}"
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

output "endpoint" {
  description = "The connection endpoint in address:port format."
  value       = "${aws_db_instance.main.endpoint}"
}

output "address" {
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
