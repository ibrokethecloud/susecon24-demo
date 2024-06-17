output "harvester_url_primary" {
   value = [ for vip in equinix_metal_reserved_ip_block.harvester_vip : lower(vip.network) ]
}

output "seed_ip_primary" {
  value = [ for node in equinix_metal_device.seed : lower(node.access_public_ipv4) ]
}