terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "netology-storage123"
    key        = "terraform.tfstate"
    region     = "ru-central1-a"


    skip_region_validation      = true
    skip_credentials_validation = true
  }
}