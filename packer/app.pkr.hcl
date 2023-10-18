variable "folder_id" {
  type = string
  default = "aaaaaaaaaaaaa"
}
variable "source_image" {
  type = string
  default = "ubuntu-1604-lts"
}
variable "service_acc_key_path" {
  type = string
  default = "/home/user/key.json"
}

source "yandex" "ubuntu16" {
  service_account_key_file = "${var.service_acc_key_path}"
  folder_id = "${var.folder_id}"
  source_image_family = "${var.source_image}"
  image_name = "reddit-app-base-${formatdate("MM-DD-YYYY", timestamp())}"
  image_family = "reddit-app-base"
  ssh_username = "ubuntu"
  platform_id = "standard-v1"
  use_ipv4_nat = true
}

build {
  sources = ["source.yandex.ubuntu16"]

  provisioner "ansible" {
    name            = "ruby"
    playbook_file   = "ansible/packer_app.yml"
  }
}
