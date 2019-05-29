# -------------------------------------------------------------------------------
# Resources
# -------------------------------------------------------------------------------
resource "random_string" "suffix" {
  length  = 8
  special = "false"
}

resource "aws_db_instance" "main" {
  depends_on                = ["aws_db_subnet_group.main"]
  identifier                = "${var.name_prefix}-db"
  name                      = "${var.database_name}"
  username                  = "${var.username}"
  password                  = "${var.password}"
  port                      = "${var.port}"
  engine                    = "${var.engine}"
  engine_version            = "${var.engine_version}"
  instance_class            = "${var.instance_type}"
  storage_type              = "gp2"
  allocated_storage         = "${var.allocated_storage}"
  snapshot_identifier       = "${var.snapshot_identifier}"
  final_snapshot_identifier = "${var.name_prefix}-final-${random_string.suffix.id}"
  skip_final_snapshot       = "${var.skip_final_snapshot}"
  publicly_accessible       = "${var.publicly_accessible}"
  vpc_security_group_ids    = ["${aws_security_group.main.id}"]
  multi_az                  = "${var.multi_az}"
  backup_retention_period   = "${var.backup_retention_period}"
  backup_window             = "${var.backup_window}"
  maintenance_window        = "${var.maintenance_window}"
  monitoring_interval       = "${var.monitoring_interval}"
  monitoring_role_arn       = "${var.monitoring_role_arn}"
  license_model             = "${var.license_model}"
  storage_encrypted         = "${var.storage_encrypted}"
  kms_key_id                = "${var.kms_key_id}"
  deletion_protection       = "${var.deletion_protection}"

  apply_immediately = "${var.apply_immediately}"

  # NOTE: This is duplicated because subnet_group does not return the name.
  db_subnet_group_name = "${var.name_prefix}-subnet-group"

  tags = "${merge(var.tags, map("Name", "${var.name_prefix}-db"))}"
}

resource "aws_db_subnet_group" "main" {
  name        = "${var.name_prefix}-subnet-group"
  description = "Terraformed subnet group."
  subnet_ids  = ["${var.subnet_ids}"]

  tags = "${merge(var.tags, map("Name", "${var.name_prefix}-subnet-group"))}"
}

resource "aws_security_group" "main" {
  name        = "${var.name_prefix}-sg"
  description = "Terraformed security group."
  vpc_id      = "${var.vpc_id}"

  tags = "${merge(var.tags, map("Name", "${var.name_prefix}-sg"))}"
}

resource "aws_security_group_rule" "egress" {
  security_group_id = "${aws_security_group.main.id}"
  type              = "egress"
  protocol          = "-1"
  from_port         = 0
  to_port           = 0
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
}
