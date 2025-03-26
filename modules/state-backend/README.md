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
| <a name="provider_local"></a> [local](#provider\_local) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_storage_bucket.bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |
| [local_file.tf_backend_file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_force_destroy"></a> [bucket\_force\_destroy](#input\_bucket\_force\_destroy) | n/a | `bool` | `false` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | (Optional, default: 'streamx\_bucket') The name of the bucket. | `string` | `"streamx_bucket"` | no |
| <a name="input_bucket_storage_class"></a> [bucket\_storage\_class](#input\_bucket\_storage\_class) | (Optional, Default: 'STANDARD') The Storage Class of the new bucket. Supported values include: STANDARD, MULTI\_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. | `string` | `"STANDARD"` | no |
| <a name="input_force_defaults_for_null_variables"></a> [force\_defaults\_for\_null\_variables](#input\_force\_defaults\_for\_null\_variables) | Enables forcing default variable values when the variable value passed to the module is null. | `bool` | `true` | no |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | This string variable represents the unique ID of your Google Cloud Platform (GCP) project. GCP uses this ID to identify your project in its system. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | (Optional, default: 'EUROPE-CENTRAL2') The GCS location https://cloud.google.com/storage/docs/locations | `string` | `"EUROPE-CENTRAL2"` | no |
| <a name="input_tf_backends"></a> [tf\_backends](#input\_tf\_backends) | Terraform backends defined as map where key is state backend prefix and value is a path where backend configuration is created. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tf_state_backend_config"></a> [tf\_state\_backend\_config](#output\_tf\_state\_backend\_config) | The Terraform state backend configuration that is set up to utilize a bucket created by this module. |
<!-- END_TF_DOCS -->