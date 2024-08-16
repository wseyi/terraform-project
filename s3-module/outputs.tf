output "bucket_id" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.mmy-tf-test-bucket.id
}

#output "bucket_arn" {
#  description = "The ARN of the S3 bucket"
#  value       = aws_s3_bucket.my_s3_bucket.arn
#}

#output "bucket_region" {
#  description = "The AWS region where the S3 bucket is created"
#  value       = aws_s3_bucket.my_s3_bucket.region
#}

#output "bucket_domain_name" {
#  description = "The bucket's domain name"
#  value       = aws_s3_bucket.my_s3_bucket.bucket_domain_name
#}

#output "bucket_hosted_zone_id" {
#  description = "The Route 53 Hosted Zone ID for this bucket's domain"
#  value       = aws_s3_bucket.my_s3_bucket.hosted_zone_id
#}