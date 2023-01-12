// Provider
provider "yandex" {
  token                    = var.yc_token
  cloud_id                 = var.yc_cloud_id
  folder_id                = var.yc_folder_id
  zone                     = var.yc_zone
}

// Network
resource "yandex_vpc_network" "network-1" {
  name = "network1"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["10.145.0.0/24"]
}

// Image
resource "yandex_compute_image" "centos-image" {
  name         = "centos1"
  source_image = "fd834rc353lpvspgr38g"
}

// VM
resource "yandex_compute_instance" "centos-1" {
  name         = "docker-manager"
  platform_id  = "standard-v3"

  resources {
    cores  = 2
    memory = 1
    core_fraction = 20
  }

  scheduling_policy {
    preemptible = true
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }
  
  boot_disk {
    initialize_params {
      image_id = "${yandex_compute_image.centos-image.id}"
    }
  }
  
  metadata = {
    ssh-keys = "cloud-user:${file("~/.ssh/id_ed25519.pub")}"
  }
  
}