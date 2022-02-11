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
}
