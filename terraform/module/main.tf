
provider "aws"{
    region = "us-east-1"
}

resource "aws_s3_object" "json_upload" {
  bucket = var.bucket_name
  key    = "log1.txt"
  source = "../../../log-file/log1.txt"
}