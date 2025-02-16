locals {
  prefix = "harris"
}

resource "aws_ecr_repository" "ecr" {
  name         = "${local.prefix}-ecr"
  force_delete = true
}

terraform {
  backend "s3" {
    bucket = "sctp-ce8-tfstate"
     key    = "harris3.4.tfstate"
    region = "ap-southeast-1"
  }
}