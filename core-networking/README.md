# core-networking infrastructure
Module to setup the network infrastructure for hosting Harvester rodeos in Equinix metal.

## Workflow
The module will generate a vlan with ID 100, in the equinix metro region.

It will then configure multiple Elastic IP blocks and Metal Gateways in the said region and associate them with the vlan.

It will also lanuch a ubuntu host, attach it to the VLAN in Layer 2 mode, and configure the DHCP server to serve elastic ip's from the blocks provisioned in the step before.

Now Harvester instances provisioned in this account and associated with this VLAN, will get Elastic IP's made available via DHCP.

This ensures that the VM's are routeable from the internet.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_metal"></a> [metal](#requirement\_metal) | 3.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_metal"></a> [metal](#provider\_metal) | 3.2.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [metal_device.harvester_dhcp](https://registry.terraform.io/providers/equinix/metal/3.2.0/docs/resources/device) | resource |
| [metal_device_network_type.harvester_dhcp](https://registry.terraform.io/providers/equinix/metal/3.2.0/docs/resources/device_network_type) | resource |
| [metal_gateway.vlan_gateway](https://registry.terraform.io/providers/equinix/metal/3.2.0/docs/resources/gateway) | resource |
| [metal_port_vlan_attachment.harvester_dhcp](https://registry.terraform.io/providers/equinix/metal/3.2.0/docs/resources/port_vlan_attachment) | resource |
| [metal_reserved_ip_block.ip_block](https://registry.terraform.io/providers/equinix/metal/3.2.0/docs/resources/reserved_ip_block) | resource |
| [metal_vlan.workload_vlan](https://registry.terraform.io/providers/equinix/metal/3.2.0/docs/resources/vlan) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [metal_project.project](https://registry.terraform.io/providers/equinix/metal/3.2.0/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_cylce"></a> [billing\_cylce](#input\_billing\_cylce) | n/a | `string` | `"hourly"` | no |
| <a name="input_facility"></a> [facility](#input\_facility) | n/a | `string` | `"sg1"` | no |
| <a name="input_hostname_prefix"></a> [hostname\_prefix](#input\_hostname\_prefix) | hostname\_prefix defines the prefix for the DHCP server provisioned in equinix metal | `string` | `"hobbyfarm-dhcp"` | no |
| <a name="input_metro"></a> [metro](#input\_metro) | equinix metal metro where the infra will be provisioned | `string` | `"SG"` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | n/a | `string` | `"1"` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | n/a | `string` | `"c3.small.x86"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | `""` | no |
| <a name="input_public_ip_block_size"></a> [public\_ip\_block\_size](#input\_public\_ip\_block\_size) | size of ip address block. This can range from /25 to /29. additional details are available here: https://metal.equinix.com/developers/docs/networking/metal-gateway/#ip-address-blocks-and-block-sizes | `string` | `"8"` | no |
| <a name="input_public_ip_blocks"></a> [public\_ip\_blocks](#input\_public\_ip\_blocks) | public\_ip\_blocks refers to number of ip address blocks that will be created in the specified metro. this is essential as a metal gateway only supports a max block size of /25. due to the hobbyfarm use cases we may need 2 blocks to allow approximately 256 IP addresses | `number` | `2` | no |
| <a name="input_vlan_id"></a> [vlan\_id](#input\_vlan\_id) | vlan\_id is the name of the harvester workload vlan | `number` | `100` | no |

## Outputs

No outputs.
