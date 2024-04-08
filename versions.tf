terraform {
  required_version = ">= 1.5"
  required_providers {
    archive = {
      source = "hashicorp/archive"
    }
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

}
#re-running CICD to confirm if ARN issue in dq-tf-apps when pulling this module is due to test.py configuration 
# cicd drone should run without error if it is solely a test config issue 