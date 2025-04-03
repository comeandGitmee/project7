terraform {
 backend "s3" {
   bucket = "knuck-if-you-buck-et" # replace with your bucket
   key    = "docker/terraform.tfstate"
   region = "us-east-1"
   #use_lockfile = true
 }
}