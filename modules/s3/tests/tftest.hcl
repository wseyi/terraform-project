test "s3_bucket" {
  description = "Test that the S3 bucket is created with the correct properties."

  # The Terraform configuration to test
  terraform {
    source = "./path/to/your/terraform/configuration"
  }

  # The variables to pass to the Terraform configuration (if any)
  vars = {
    bucket_name = "example-bucket"
    region      = "eu-north-1"
  }

  # Assertions
  assert "s3_bucket_exists" {
    description = "The S3 bucket should exist."
    condition   = terraform.resource("aws_s3_bucket", "this").exists()
  }

  assert "s3_bucket_name" {
    description = "The S3 bucket should have the correct name."
    condition   = terraform.resource("aws_s3_bucket", "this").attr("bucket") == "example-bucket"
  }

  assert "s3_bucket_region" {
    description = "The S3 bucket should be created in the correct region."
    condition   = terraform.resource("aws_s3_bucket", "this").attr("region") == "us-west-2"
  }
}