# SUSECON 2024 Harvester Demo

The repo contains the following terraform samples:

* core-networking: for defining a vlan100 on equinix metal, a metal gateway and metal reserved ip block. The module also provisions a dhcp server to serve as the gateway and allocate ip addresses from the reserved block for subsequent harvester clusters using vlan id 100

* harvester-amd64: for setting up an amd64 harvester cluster in equinix metal

* harvester-arm64: for setting up an arm64 harvester cluster in equinix metal