data "aws_caller_identity" "self" {}

data "aws_region" "current" {}

data "terraform_remote_state" "network_main" {
  backend = "s3"

  config = {
    bucket = "githubactions-tfstate"
    key    = "${local.system_name}/${local.env_name}/network/main_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "routing_terratest_click" {
  backend = "s3"

  config = {
    bucket = "githubactions-tfstate"
    key    = "${local.system_name}/${local.env_name}/routing/terratest_click_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}