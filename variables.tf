variable "metastore_data_accesses" {
  description = <<EOT
Map of metastore_data_accesses, attributes below
Required:
    - name
Optional:
    - api
    - comment
    - force_destroy
    - force_update
    - is_default
    - isolation_mode
    - metastore_id
    - owner
    - read_only
    - skip_validation
    - aws_iam_role (block):
        - external_id (optional)
        - role_arn (required)
        - unity_catalog_iam_arn (optional)
    - azure_managed_identity (block):
        - access_connector_id (required)
        - credential_id (optional)
        - managed_identity_id (optional)
    - azure_service_principal (block):
        - application_id (required)
        - client_secret (required)
        - directory_id (required)
    - cloudflare_api_token (block):
        - access_key_id (required)
        - account_id (required)
        - secret_access_key (required)
    - databricks_gcp_service_account (block):
        - credential_id (optional)
        - email (optional)
    - gcp_service_account_key (block):
        - email (required)
        - private_key (required)
        - private_key_id (required)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    name            = string
    api             = optional(string)
    comment         = optional(string)
    force_destroy   = optional(bool)
    force_update    = optional(bool)
    is_default      = optional(bool)
    isolation_mode  = optional(string)
    metastore_id    = optional(string)
    owner           = optional(string)
    read_only       = optional(bool)
    skip_validation = optional(bool)
    aws_iam_role = optional(object({
      external_id           = optional(string)
      role_arn              = string
      unity_catalog_iam_arn = optional(string)
    }))
    azure_managed_identity = optional(object({
      access_connector_id = string
      credential_id       = optional(string)
      managed_identity_id = optional(string)
    }))
    azure_service_principal = optional(object({
      application_id = string
      client_secret  = string
      directory_id   = string
    }))
    cloudflare_api_token = optional(object({
      access_key_id     = string
      account_id        = string
      secret_access_key = string
    }))
    databricks_gcp_service_account = optional(object({
      credential_id = optional(string)
      email         = optional(string)
    }))
    gcp_service_account_key = optional(object({
      email          = string
      private_key    = string
      private_key_id = string
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

