<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 6.24.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.26.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_address.ip_address](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_region"></a> [cloud\_region](#input\_cloud\_region) | This string variable indicates the GCP region where your network resources will be located. The default value we have set is 'europe-central2'. | `string` | `"europe-central2"` | no |
| <a name="input_force_defaults_for_null_variables"></a> [force\_defaults\_for\_null\_variables](#input\_force\_defaults\_for\_null\_variables) | Enables forcing default variable values when the variable value passed to the module is null. | `bool` | `true` | no |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | This string variable represents the unique ID of your Google Cloud Platform (GCP) project. GCP uses this ID to identify your project in its system. | `string` | n/a | yes |
| <a name="input_google_compute_address_name"></a> [google\_compute\_address\_name](#input\_google\_compute\_address\_name) | Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long | `string` | `"streamx_ip_address"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_allocated_ip"></a> [allocated\_ip](#output\_allocated\_ip) | This output represents the IP address that you've allocated for future use. This IP address is unique globally within your GCP project. |
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | This output is the unique self\_link of the VPC network you've created. This link can be used to reference the network in other Google Cloud resources. |
| <a name="output_nodes_subnet_id"></a> [nodes\_subnet\_id](#output\_nodes\_subnet\_id) | This output is the unique self\_link of the subnet where the nodes of the GKE cluster will be located. This link can be used to reference the subnet in other Google Cloud resources. |
<!-- END_TF_DOCS -->