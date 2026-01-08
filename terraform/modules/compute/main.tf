# Compute Engine VM (private)

resource "google_compute_instance" "web_server" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  allow_stopping_for_update = true

  tags = ["web-server"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
