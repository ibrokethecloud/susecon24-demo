// IP attachment to be added to seed node, and this is subsequently assigned as Harvester vip
// in the config.yaml
resource "random_password" "password" {
  length  = 16
  special = false
}

resource "random_password" "token" {
  length  = 16
  special = false
}

resource "equinix_metal_reserved_ip_block" "harvester_vip" {
  project_id = data.equinix_metal_project.project.project_id
  metro      = var.metro
  type       = "public_ipv4"
  quantity   = 1
  count = var.node_count
}

resource "equinix_metal_device" "seed" {
  hostname         = "${var.hostname_prefix}-${count.index+1}"
  count            = var.node_count
  plan             = var.plan
  metro            = var.metro
  operating_system = "custom_ipxe"
  billing_cycle    = var.billing_cylce
  project_id       = data.equinix_metal_project.project.project_id
  ipxe_script_url  = "${var.ipxe_script}${element(split("v", var.harvester_version), 1)}"
  always_pxe       = "false"
  user_data        = templatefile("${path.module}/create.tpl", { version = var.harvester_version, password = random_password.password.result, token = random_password.token.result, vip = equinix_metal_reserved_ip_block.harvester_vip[count.index].network, hostname_prefix = var.hostname_prefix, ssh_key = var.ssh_key, count = "${count.index+1}" })
}

resource "equinix_metal_ip_attachment" "first_address_assignment_primary_cluster" {
  device_id     = equinix_metal_device.seed[count.index].id
  count = var.node_count
  cidr_notation = join("/", [cidrhost(equinix_metal_reserved_ip_block.harvester_vip[count.index].cidr_notation, 0), "32"])
}

// setup hybrid bonded network mode and attach to vlan for seed node
resource "equinix_metal_port_vlan_attachment" "vlan_attach_seed" {
  count     = var.node_count
  device_id = equinix_metal_device.seed[count.index].id
  vlan_vnid = var.vlan_id
  port_name = "bond0"
}