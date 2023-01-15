provider "aws" {
  region = "ca-central-1"
}

terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-nidio-tfstates"
    key    = "terraform-test.tfstate"
    region = "ca-central-1"
  }
}


# docker run -it -v ${PWD}:/app -w /app --entrypoint "" hashicorp/terraform:light sh
# terraform plan -out plano