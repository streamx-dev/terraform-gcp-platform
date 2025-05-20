<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 6.24.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cluster"></a> [cluster](#module\_cluster) | ./modules/cluster | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_deletion_protection"></a> [cluster\_deletion\_protection](#input\_cluster\_deletion\_protection) | Whether Terraform will be prevented from destroying the cluster. Deleting this cluster via terraform destroy or terraform apply will only succeed if this field is false in the Terraform state. | `bool` | `null` | no |
| <a name="input_cluster_description"></a> [cluster\_description](#input\_cluster\_description) | The description of the kubernetes cluster. | `string` | `null` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | (Optional, default 'streamx') The name of the kubernetes cluster. | `string` | `"streamx"` | no |
| <a name="input_force_defaults_for_null_variables"></a> [force\_defaults\_for\_null\_variables](#input\_force\_defaults\_for\_null\_variables) | Enables forcing default variable values when the variable value passed to the module is null. | `bool` | `true` | no |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | ID of project on GCP where the cluster is created | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | (Optional, default 'europe-west1') A valid GCP location (region or zone) in which the kubernetes cluster will be available. | `string` | `"europe-west1"` | no |
| <a name="input_kubeconfig_path"></a> [kubeconfig\_path](#input\_kubeconfig\_path) | Script creates kubeconfig file with provided path. No file is created when null is provided. | `any` | `null` | no |
| <a name="input_node_pool_autoscaling_max_node_count"></a> [node\_pool\_autoscaling\_max\_node\_count](#input\_node\_pool\_autoscaling\_max\_node\_count) | (Optional, default 10) Maximum number of nodes in the NodePool. Must be >= min\_node\_count. Default value 10. | `number` | `10` | no |
| <a name="input_node_pool_autoscaling_min_node_count"></a> [node\_pool\_autoscaling\_min\_node\_count](#input\_node\_pool\_autoscaling\_min\_node\_count) | (Optional, default 1) Minimum number of nodes in the NodePool. Must be >=0 and <= node\_pool\_autoscaling\_min\_node\_count. Default value 1. | `number` | `1` | no |
| <a name="input_node_pool_disk_size"></a> [node\_pool\_disk\_size](#input\_node\_pool\_disk\_size) | (Optional, default 200) Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB | `number` | `200` | no |
| <a name="input_node_pool_machine_type"></a> [node\_pool\_machine\_type](#input\_node\_pool\_machine\_type) | (Optional) The name of a Google Compute Engine machine type. The list of predefined machine types is available using the following command: gcloud compute machine-types list | `string` | `"e2-standard-4"` | no |
| <a name="input_node_pool_name"></a> [node\_pool\_name](#input\_node\_pool\_name) | (Optional, default 'streamx') The name node\_pool for kubernetes cluster. | `string` | `"streamx"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | Base64 encoded public certificate that is the root certificate of the cluster. |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The IP address of this cluster's Kubernetes master. |
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | K8s cluster kubeconfig |
<!-- END_TF_DOCS -->