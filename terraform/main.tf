// Spec
locals {
  cores = {
    stage = 2
    prod = 2
  }
  memory = {
    stage = 2
    prod = 2
  }
  disk_size = {
    stage = 10
    prod = 10
  }
  vms_count = {
    stage = 1
    prod  = 2
  }
  vms_for_each = {
    stage = toset(["fs1"])
    prod  = toset(["fp1", "fp2"])
  }
}

// VM Count
resource "yandex_compute_instance" "vm_count" {
  count        = local.vms_count[terraform.workspace]
  name         = "${terraform.workspace}-count-${count.index}"
  platform_id  = "standard-v3"

  resources {
    cores  = local.cores[terraform.workspace]
    memory = local.memory[terraform.workspace]
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
      image_id = var.yc_boot_img
    }
  }
  
  metadata = {
    ssh-keys = "cloud-user:${file("~/.ssh/id_ed25519.pub")}"
  }
  
}

// VM for each
resource "yandex_compute_instance" "vm_for_each" {
  for_each     = local.vms_for_each[terraform.workspace]
  name         = "${terraform.workspace}-foreach-${each.key}"
  platform_id  = "standard-v3"

  resources {
    cores  = local.cores[terraform.workspace]
    memory = local.memory[terraform.workspace]
    core_fraction = 20
  }

  lifecycle {
    create_before_destroy = true
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
      image_id = var.yc_boot_img
    }
  }
  
  metadata = {
    ssh-keys = "cloud-user:${file("~/.ssh/id_ed25519.pub")}"
  }
  
}