provider "google" {
  project = "acme-app"
  region  = "us-central1"
}

#provider "aws" {
#  version = "~> 1.0"
#
#  region = "us-east-1"
#}

# The default provider configuration
provider "aws" {
  region = "us-east-1"
}

# Additional provider configuration for west coast region
provider "aws" {
  alias  = "west"
  region = "us-west-2"
}

resource "aws_insta" "foo" {
  provider = aws.west
}

resource "aws_instance" "foo2" {
  ami = "ami-0dd0ccab7e2801812"

}

