terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  version = ">= 2.17"
  region  = var.region
}

data "aws_vpc" "main" {
  default = true
}

data "aws_subnet_ids" "main" {
  vpc_id = data.aws_vpc.main.id
}

module "rds" {
  source = "../../"

  name_prefix = var.name_prefix
  username    = "superuser"
  password    = "dolphins"
  port        = 5000
  vpc_id      = data.aws_vpc.main.id
  subnet_ids  = data.aws_subnet_ids.main.ids
  multi_az    = false

  tags = {
    environment = "dev"
    terraform   = "True"
  }
}
