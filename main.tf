terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "4.0.0"
    }
  }
}

provider "aws" {
    region = "us-west-2" 
}

module "website_s3_bucket" {
    source = "./modules/aws-s3-static-website-bucket"

    bucket_name = "mybucketsite-example-14-09-2022"

    tags = {
        terraform = "True"
        environment = "dev"
    }
  
}