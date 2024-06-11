#cloud-config
scheme_version: 1
server_url: https://${seed}:443
token: "${token}"
os:
  ssh_authorized_keys:
  - "${ssh_key}"
  password: "${password}"
  hostname: "${hostname_prefix}-${count}"
  environment:
    "TTY": "/dev/ttyAMA0"
install:
  mode: join
  device: /dev/nvme0n1
  iso_url: https://releases.rancher.com/harvester/${version}/harvester-${version}-arm64.iso
  tty: ttyAMA0,115200
  skipchecks: true