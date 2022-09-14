output "website_bucket_arn" {
    description = "ARN of the bucket"
    value = module.website_s3_bucket.arn
  
}

output "website_bucket_name" {
    description = "Name (id) of the bucket"
    value = module.website_s3_bucket.name
  
}

output "website_bucket_domain" {
    description = "Domain name of the bucket"
    value = module.website_s3_bucket.domain
  
}

output "website_index_url" {
  description = "URL to check the index file"
  value = "https://${module.website_s3_bucket.name}.${module.website_s3_bucket.domain}/index.html"
}