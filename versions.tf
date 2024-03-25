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

# initial feature migrate commit to trigger cicd branch
