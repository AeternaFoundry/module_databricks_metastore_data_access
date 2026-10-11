output "metastore_data_accesses_id" {
  description = "Map of id values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no id are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metastore_data_accesses_api" {
  description = "Map of api values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no api are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.api if v.api != null && length(v.api) > 0 }
}
output "metastore_data_accesses_aws_iam_role" {
  description = "Map of aws_iam_role values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no aws_iam_role are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => one(v.aws_iam_role) if v.aws_iam_role != null && length(v.aws_iam_role) > 0 }
}
output "metastore_data_accesses_azure_managed_identity" {
  description = "Map of azure_managed_identity values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no azure_managed_identity are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => one(v.azure_managed_identity) if v.azure_managed_identity != null && length(v.azure_managed_identity) > 0 }
}
output "metastore_data_accesses_azure_service_principal" {
  description = "Map of azure_service_principal values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no azure_service_principal are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => one(v.azure_service_principal) if v.azure_service_principal != null && length(v.azure_service_principal) > 0 }
  sensitive   = true
}
output "metastore_data_accesses_cloudflare_api_token" {
  description = "Map of cloudflare_api_token values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no cloudflare_api_token are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => one(v.cloudflare_api_token) if v.cloudflare_api_token != null && length(v.cloudflare_api_token) > 0 }
  sensitive   = true
}
output "metastore_data_accesses_comment" {
  description = "Map of comment values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no comment are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "metastore_data_accesses_databricks_gcp_service_account" {
  description = "Map of databricks_gcp_service_account values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no databricks_gcp_service_account are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => one(v.databricks_gcp_service_account) if v.databricks_gcp_service_account != null && length(v.databricks_gcp_service_account) > 0 }
}
output "metastore_data_accesses_force_destroy" {
  description = "Map of force_destroy values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no force_destroy are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.force_destroy if v.force_destroy != null }
}
output "metastore_data_accesses_force_update" {
  description = "Map of force_update values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no force_update are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.force_update if v.force_update != null }
}
output "metastore_data_accesses_gcp_service_account_key" {
  description = "Map of gcp_service_account_key values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no gcp_service_account_key are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => one(v.gcp_service_account_key) if v.gcp_service_account_key != null && length(v.gcp_service_account_key) > 0 }
  sensitive   = true
}
output "metastore_data_accesses_is_default" {
  description = "Map of is_default values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no is_default are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.is_default if v.is_default != null }
}
output "metastore_data_accesses_isolation_mode" {
  description = "Map of isolation_mode values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no isolation_mode are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.isolation_mode if v.isolation_mode != null && length(v.isolation_mode) > 0 }
}
output "metastore_data_accesses_metastore_id" {
  description = "Map of metastore_id values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "metastore_data_accesses_name" {
  description = "Map of name values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no name are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.name if v.name != null && length(v.name) > 0 }
}
output "metastore_data_accesses_owner" {
  description = "Map of owner values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no owner are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "metastore_data_accesses_provider_config" {
  description = "Map of provider_config values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no provider_config are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "metastore_data_accesses_read_only" {
  description = "Map of read_only values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no read_only are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.read_only if v.read_only != null }
}
output "metastore_data_accesses_skip_validation" {
  description = "Map of skip_validation values across all metastore_data_accesses, keyed the same as var.metastore_data_accesses except keys with no skip_validation are omitted"
  value       = { for k, v in databricks_metastore_data_access.metastore_data_accesses : k => v.skip_validation if v.skip_validation != null }
}

