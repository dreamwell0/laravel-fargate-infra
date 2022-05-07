terraform {
  backend "s3" {
    bucket = "githubactions-tfstate"
    key    = "example/prod/routing/terratest_click_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}