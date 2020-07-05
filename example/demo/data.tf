data "aws_caller_identity" "current" {
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    region = "ap-northeast-2"
    bucket = "terraform-11stcorp-demo-state"
    key    = "vpc-demo.tfstate"
  }
}

data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    region = "ap-northeast-2"
    bucket = "terraform-11stcorp-demo-state"
    key    = "eks-demo.tfstate"
  }
}