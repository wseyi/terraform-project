variable "ami" {
  description = "Value of the instance ami"
  type        = string
  default     = "ami-0b8fd93c15b2c81ce"
}

variable "region" {
  description = "Value of the aws region"
  type        = string
  default     = "eu-north-1"
}

variable "key_name" {
  type = string
  default = "devops-server"
}

variable "instance_type" {
  description = "Value of the instance type"
  type        = string
  default     = "t3.micro"
}
