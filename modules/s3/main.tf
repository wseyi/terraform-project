module "s3-bucket" {
  source  = "../terraform-project/s3"
  bucket = "my-s3-bucket"
  acl = "private"
  control_object_ownership = true
  object_ownership = "ObjectWriter" #put account
  versioning = {
    enabled = true
  }
}