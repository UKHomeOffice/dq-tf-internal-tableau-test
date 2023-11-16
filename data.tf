data "aws_ami" "int_tableau_linux" {
  most_recent = true

  filter {
    name = "name"

    values = [
      "dq-tableau-linux-205*",
    ]
  }

  owners = [
    "self",
  ]
}

data "aws_ami" "int_tableau_linux_upgrade" {
  most_recent = true

  filter {
    name = "name"

    values = [
      "dq-tableau-linux-207*",
    ]
  }

  owners = [
    "self",
  ]
}

data "aws_kms_key" "rds_kms_key" {
  key_id = "alias/aws/rds"
}

data "aws_subnet" "sub_dq_internal_dashboard_subnet_cidr" {
  filter {
    name   = "tag:Name"
    values = ["subnet-internal-tableau-apps-*"]    
  }
}

data "aws_subnet" "sub_dq_internal_dashboard_subnet_cidr_az2" {
  filter {
    name   = "tag:Name"
    values = ["az2-subnet-internal-tableau-apps-*"]    
  }
}

data "aws_subnet" "sub_dq_external_dashboard_subnet_cidr" {
  filter {
    name   = "tag:Name"
    values = ["subnet-external-tableau-apps-*"]    
  }
}

data "aws_subnet" "sub_dq_lambda_apps_cidr" {
  filter {
    name   = "tag:Name"
    values = ["subnet-lambda-apps-*"]    
  }
}

data "aws_subnet" "sub_dq_lambda_apps_cidr_az2" {
  filter {
    name   = "tag:Name"
    values = ["az2-subnet-lambda-apps-*"]    
  }
}
