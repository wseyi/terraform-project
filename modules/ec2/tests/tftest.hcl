test {
  name = "Test EC2 Instance"

  # Plan the Terraform configuration
  step "plan" {
    apply = false

    # Run the Terraform plan
    plan = "terraform plan"
  }

  # Apply the Terraform configuration and validate outputs
  step "apply" {
    apply = true

    # Run the Terraform apply
    apply = "terraform apply -auto-approve"

    # Test cases to validate the EC2 instance
    check "instance_id_exists" {
      description = "Ensure the EC2 instance ID is not empty"
      condition   = length(terraform.output.instance_id) > 0
    }

    check "public_ip_exists" {
      description = "Ensure the EC2 instance has a public IP"
      condition   = length(terraform.output.public_ip) > 0
    }

    check "instance_type_correct" {
      description = "Ensure the EC2 instance type is as expected"
      condition   = terraform.output.instance_type == "t2.micro"  # Replace with your expected instance type
    }

    check "instance_in_az" {
      description = "Ensure the EC2 instance is in the correct availability zone"
      condition   = terraform.output.availability_zone != ""
    }

    check "security_groups_assigned" {
      description = "Ensure the EC2 instance has security groups assigned"
      condition   = length(terraform.output.security_groups) > 0
    }
  }
}