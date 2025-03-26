<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 6.24.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | ~> 6.24.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_container_cluster.cluster](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster) | resource |
| [google_container_node_pool.node_pool](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_node_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_force_defaults_for_null_variables"></a> [force\_defaults\_for\_null\_variables](#input\_force\_defaults\_for\_null\_variables) | Enables forcing default variable values when the variable value passed to the module is null. | `bool` | `true` | no |
| <a name="input_gcp_cluster_location"></a> [gcp\_cluster\_location](#input\_gcp\_cluster\_location) | A valid GCP location (region or zone) in which the kubernetes cluster will be available. | `string` | `"europe-central2-a"` | no |
| <a name="input_gcp_cluster_name"></a> [gcp\_cluster\_name](#input\_gcp\_cluster\_name) | The name of the kubernetes cluster. | `string` | `"streamx"` | no |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | ID of project on GCP where the cluster is created | `string` | n/a | yes |
| <a name="input_node_pool_autoscaling_max_node_count"></a> [node\_pool\_autoscaling\_max\_node\_count](#input\_node\_pool\_autoscaling\_max\_node\_count) | (Optional) Maximum number of nodes in the NodePool. Must be >= min\_node\_count. Default value 10. | `number` | `10` | no |
| <a name="input_node_pool_autoscaling_min_node_count"></a> [node\_pool\_autoscaling\_min\_node\_count](#input\_node\_pool\_autoscaling\_min\_node\_count) | (Optional) Minimum number of nodes in the NodePool. Must be >=0 and <= node\_pool\_autoscaling\_min\_node\_count. Default value 1. | `number` | `1` | no |
| <a name="input_node_pool_disk_size"></a> [node\_pool\_disk\_size](#input\_node\_pool\_disk\_size) | (Optional) Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB | `number` | `200` | no |
| <a name="input_node_pool_machine_type"></a> [node\_pool\_machine\_type](#input\_node\_pool\_machine\_type) | (Optional) The name of a Google Compute Engine machine type. The list of predefined machine types is available using the following command: gcloud compute machine-types list | `string` | `"e2-standard-4"` | no |
| <a name="input_node_pool_name"></a> [node\_pool\_name](#input\_node\_pool\_name) | The name node\_pool for kubernetes cluster. | `string` | `"streamx"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_certificate"></a> [client\_certificate](#output\_client\_certificate) | Base64 encoded public certificate used by clients to authenticate to the cluster endpoint. |
| <a name="output_client_key"></a> [client\_key](#output\_client\_key) | Base64 encoded private key used by clients to authenticate to the cluster endpoint. |
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | Base64 encoded public certificate that is the root certificate of the cluster. |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The IP address of this cluster's Kubernetes master. |
<!-- END_TF_DOCS -->