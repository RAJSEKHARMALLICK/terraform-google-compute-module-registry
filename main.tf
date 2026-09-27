resource "google_compute_instance" "this" {
  for_each = var.instance_names

  project      = var.project_id
  name         = each.value
  zone         = var.zone
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"

    # No nat_ip specified => ephemeral external IP
    access_config {}
  }
}
