#cloud-config
scheme_version: 1
token: "${token}"
os:
  ssh_authorized_keys:
    - "${ssh_key}"
  password: "${password}"
  hostname: "${hostname_prefix}-${count}"
install:
  mode: create
  device: /dev/nvme0n1
  iso_url: https://releases.rancher.com/harvester/${version}/harvester-${version}-arm64.iso
  tty: ttyAMA0,115200
  vip: ${vip}
  vip_mode: static
  skipchecks: true
