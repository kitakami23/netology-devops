variable "yc_token" {
  type = string
  description = "Yandex Cloud OAuth token"
}

variable "yc_cloud_id" {
  type = string
  description = "Yandex Cloud ID"
  default = "b1g1rd253n4vk935t5dn"
}

variable "yc_folder_id" {
  type = string
  description = "Yandex Cloud Folder ID"
  default = "b1g0q3ip6k2f9mlbagj4"
}

variable "yc_zone" {
  type = string
  description = "Yandex Cloud zone"
  default = "ru-central1-a"
}
