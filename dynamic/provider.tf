terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.49.0"
        }
    }
    backend "s3" {
        bucket = "neelareddy.stores"
        key = "dynamic-demo"
        region = "us-east-1"
        dynamodb_table = "neelareddy.stores"
    }
}


#provide authentication here
provider "aws" {
    region = "us-east-1"
}    