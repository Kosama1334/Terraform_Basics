terraform {

  required_version = ">= 1.2"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.92"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# resource block for S3 bucket

resource "aws_s3_bucket" "tf_state_backend" {
  bucket = var.bucket_name

  #Enable versioning
  versioning {
    enabled = true
  }


#  server_side_encryption_configuration {
#    rule {
#      apply_server_side_encryption_by_default {
#        sse_algorithm = "AES256"
#      }
#    }
#  }
}

# encryption for the S3 bucket

resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_encrypt" {
  bucket = aws_s3_bucket.${var.bucket_name}.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

#resource block for DynamoDB table

resource "aws_dynamodb_table" "tf_dynamodb_table" {
  name = "tf_dynamodb_lock_table"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}

