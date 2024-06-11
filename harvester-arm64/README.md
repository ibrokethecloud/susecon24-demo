## Harvester arm64 cluster setup
Simple modulel to setup a Harvester arm64 arch cluster on equinix metal

```
METAL_AUTH_TOKEN="metal-auth-token"
TF_VAR_project_name="equinix-metal-project-name"
TF_VAR_vlan_id="vlan-to-attach-eth1"
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_equinix"></a> [equinix](#requirement\_equinix) | 1.14.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_equinix"></a> [equinix](#provider\_equinix) | 1.14.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [equinix_metal_device.join](https://registry.terraform.io/providers/equinix/equinix/1.14.1/docs/resources/metal_device) | resource |
| [equinix_metal_device.seed](https://registry.terraform.io/providers/equinix/equinix/1.14.1/docs/resources/metal_device) | resource |
| [equinix_metal_ip_attachment.first_address_assignment_primary_cluster](https://registry.terraform.io/providers/equinix/equinix/1.14.1/docs/resources/metal_ip_attachment) | resource |
| [equinix_metal_port_vlan_attachment.join](https://registry.terraform.io/providers/equinix/equinix/1.14.1/docs/resources/metal_port_vlan_attachment) | resource |
| [equinix_metal_port_vlan_attachment.vlan_attach_seed](https://registry.terraform.io/providers/equinix/equinix/1.14.1/docs/resources/metal_port_vlan_attachment) | resource |
| [equinix_metal_reserved_ip_block.harvester_vip](https://registry.terraform.io/providers/equinix/equinix/1.14.1/docs/resources/metal_reserved_ip_block) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [random_password.token](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [equinix_metal_project.project](https://registry.terraform.io/providers/equinix/equinix/1.14.1/docs/data-sources/metal_project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_cylce"></a> [billing\_cylce](#input\_billing\_cylce) | n/a | `string` | `"hourly"` | no |
| <a name="input_harvester_version"></a> [harvester\_version](#input\_harvester\_version) | n/a | `string` | `"v1.3.0"` | no |
| <a name="input_hostname_prefix"></a> [hostname\_prefix](#input\_hostname\_prefix) | n/a | `string` | `"harvester-arm64"` | no |
| <a name="input_ipxe_script"></a> [ipxe\_script](#input\_ipxe\_script) | n/a | `string` | `"https://raw.githubusercontent.com/ibrokethecloud/susecon24-demo/main/harvester-arm64/ipxe/ipxe-"` | no |
| <a name="input_metro"></a> [metro](#input\_metro) | n/a | `string` | `"DC"` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | n/a | `string` | `"3"` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | n/a | `string` | `"c3.large.arm64"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | `""` | no |
| <a name="input_ssh_key"></a> [ssh\_key](#input\_ssh\_key) | Your ssh key, examples: 'github: myghid' or 'ssh-rsa AAAAblahblah== keyname' | `string` | `""` | no |
| <a name="input_vlan_id"></a> [vlan\_id](#input\_vlan\_id) | n/a | `string` | `"100"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_harvester_url_primary"></a> [harvester\_url\_primary](#output\_harvester\_url\_primary) | n/a |
| <a name="output_seed_ip_primary"></a> [seed\_ip\_primary](#output\_seed\_ip\_primary) | n/a |
