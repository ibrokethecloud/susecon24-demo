variable "harvester_version" {
  default = "v1.3.1"
}

variable "node_count" {
  default = "3"
}

variable "project_name" {
  default = ""
}

variable "plan" {
  default = "c3.large.arm64"
}

variable "billing_cylce" {
  default = "hourly"
}

variable "metro" {
  default = "DC"
}

variable "ipxe_script" {
  default = "https://raw.githubusercontent.com/ibrokethecloud/susecon24-demo/main/harvester-arm64/ipxe/ipxe-"
}

variable "hostname_prefix" {
  default = "harvester-arm64"
}

variable "ssh_key" {
  default     = ""
  description = "Your ssh key, examples: 'github: myghid' or 'ssh-rsa AAAAblahblah== keyname'"
}

variable "vlan_id" {
  default = "100"
}
