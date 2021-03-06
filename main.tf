resource "google_compute_instance" "vm_instance" {
  name         = "test"
  machine_type = "e2-medium"
  zone        = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
