resource "yandex_lb_network_load_balancer" "reddit_app_lb" {
  name = "reddit-app-lb"
  # deletion_protection = "false"
  listener {
    name = "reddit-app-lb"
    port = 80
    target_port = 9292
    external_address_spec {
      ip_version = "ipv4"
    }
  }
  attached_target_group {
    target_group_id = "${yandex_lb_target_group.reddit.id}"
    healthcheck {
      name = "check-reddit-app"
      http_options {
        port = 9292
        path = "/"
      }
    }
  }
}

resource "yandex_lb_target_group" "reddit" {
  name = "reddit-tg"
  dynamic "target" {
    for_each = yandex_compute_instance.app.*.network_interface.0.ip_address
    content {
      address   = target.value
      subnet_id = var.subnet_id
    }
  }
}