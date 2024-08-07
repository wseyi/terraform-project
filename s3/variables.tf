variable "Environment" {
  description = "Value of the environment"
  type        = string
  default     = "Dev"
}

variable "Name" {
  description = "Value of tag name"
  type        = string
  default     = "my bucket"
}

variable "bucket" {
  description = "Value of the bucket name"
  type        = string
  default     = "my-tf-test-bucket"
}

variable "region" {
  description = "Value of the aws region"
  type        = string
  default     = "eu-north-1"
}