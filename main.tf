terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.71.0"
    }
  }
}

provider "yandex" {
  token     = "AQAAAAACLSxcAATuwSNfc7x6j0urgFYZCBNDTOE"
  cloud_id  = "b1gpb22ldlop3pqn12lm"
  folder_id = "b1gp6hk844ti2lhm2ep4"
  zone      = "<ru-central1-b>"
}

resource "yandex_compute_instance" "vm-1" {
  name = "terraform1"

resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd87va5cc00gaq2f5qfb"
    }
  }
  
  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }
  }
