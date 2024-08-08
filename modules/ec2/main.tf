module "ec2-instance" {
  source = "../terraform-project/ec2"
  ami = "ami-07c8c1b18ca66bb07"  # Change to your desired AMI
  instance_type = "t3.micro"
  key_name = "terraform"  # Change to your key pair name
  create_iam_instance_profile = true
  iam_role_name = "seyi-ec2-role"
}