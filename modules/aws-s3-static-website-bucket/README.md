This module provisions AWS S3 buckets configured for statics website hosting.

Upload the www files using the next command after terraform apply:

aws s3 cp .\modules\aws-s3-static-website-bucket\www\ s3://$(terraform output -raw website_bucket_name)/ --recursive