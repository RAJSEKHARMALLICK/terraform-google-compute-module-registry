output "instance_names" {
  value = {
    for name, instance in google_compute_instance.this :
    name => instance.name
  }
}

output "internal_ips" {
  value = {
    for name, instance in google_compute_instance.this :
    name => instance.network_interface[0].network_ip
  }
}

output "external_ips" {
  value = {
    for name, instance in google_compute_instance.this :
    name => instance.network_interface[0].access_config[0].nat_ip
  }
}
