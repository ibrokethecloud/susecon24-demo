output "harvester_url_primary" {
  value = one(equinix_metal_reserved_ip_block.harvester_vip[*].network)
}

output "seed_ip_primary" {
  value = one(equinix_metal_device.seed[*].access_public_ipv4)
}