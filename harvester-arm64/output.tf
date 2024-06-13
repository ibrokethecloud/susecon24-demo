output "harvester_url_primary" {
  value = "https://${equinix_metal_reserved_ip_block.harvester_vip.network}/"
}

output "seed_ip_primary" {
  value = equinix_metal_device.seed.0.access_public_ipv4
}
