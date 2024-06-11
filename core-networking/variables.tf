variable "node_count" {
  default = "1"
}

variable "project_name" {
  default = ""
}

variable "plan" {
  default = "c3.small.x86"
}

variable "billing_cylce" {
  default = "hourly"
}

// equinix metal metro where the infra will be provisioned
variable "metro" {
  default = "SG"
}

variable "facility" {
  default = "sg1"
}

// hostname_prefix defines the prefix for the DHCP server provisioned in equinix metal
variable "hostname" {
  default = "vlan-dhcp"
}

// vlan_id is the name of the harvester workload vlan
variable "vlan_id" {
  default = 100
}

// public_ip_blocks refers to number of ip address blocks that will be created in the specified metro.
// this is essential as a metal gateway only supports a max block size of /25. 
// due to the hobbyfarm use cases we may need 2 blocks to allow approximately 256 IP addresses
variable "public_ip_blocks" {
  default = 1
}

// size of ip address block. 
// This can range from /25 to /29.
// additional details are available here: https://metal.equinix.com/developers/docs/networking/metal-gateway/#ip-address-blocks-and-block-sizes
variable "public_ip_block_size" {
  default = "8"
}

// one of the supported operating systemshttps://deploy.equinix.com/developers/docs/metal/operating-systems/supported/
variable operating_system {
  default = "ubuntu_24_04"
}