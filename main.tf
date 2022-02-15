resource "aws_s3_bucket" "bucket" {
  bucket = "youruniquebucketname"
  acl    = "public-read"

  provisioner "local-exec" {
      command = "aws s3 sync static/ s3://${youruniquebucketname} --acl public-read --delete"

  }

  website {
    index_document = "index.html"
  }
  
}