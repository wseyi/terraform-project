module "s3-bucket" {
  source  = "../../s3-module"
  bucket = "my-s3-bucket"
  # acl = "private"
  # control_object_ownership = true
  # object_ownership = "ObjectWriter" #put account
  # versioning = {
  #   enabled = true
  # }
}