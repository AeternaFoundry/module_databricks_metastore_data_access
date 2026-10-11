resource "databricks_metastore_data_access" "metastore_data_accesses" {
  for_each = var.metastore_data_accesses

  name            = each.value.name
  api             = each.value.api
  comment         = each.value.comment
  force_destroy   = each.value.force_destroy
  force_update    = each.value.force_update
  is_default      = each.value.is_default
  isolation_mode  = each.value.isolation_mode
  metastore_id    = each.value.metastore_id
  owner           = each.value.owner
  read_only       = each.value.read_only
  skip_validation = each.value.skip_validation

  dynamic "aws_iam_role" {
    for_each = each.value.aws_iam_role != null ? [each.value.aws_iam_role] : []
    content {
      external_id           = aws_iam_role.value.external_id
      role_arn              = aws_iam_role.value.role_arn
      unity_catalog_iam_arn = aws_iam_role.value.unity_catalog_iam_arn
    }
  }

  dynamic "azure_managed_identity" {
    for_each = each.value.azure_managed_identity != null ? [each.value.azure_managed_identity] : []
    content {
      access_connector_id = azure_managed_identity.value.access_connector_id
      credential_id       = azure_managed_identity.value.credential_id
      managed_identity_id = azure_managed_identity.value.managed_identity_id
    }
  }

  dynamic "azure_service_principal" {
    for_each = each.value.azure_service_principal != null ? [each.value.azure_service_principal] : []
    content {
      application_id = azure_service_principal.value.application_id
      client_secret  = azure_service_principal.value.client_secret
      directory_id   = azure_service_principal.value.directory_id
    }
  }

  dynamic "cloudflare_api_token" {
    for_each = each.value.cloudflare_api_token != null ? [each.value.cloudflare_api_token] : []
    content {
      access_key_id     = cloudflare_api_token.value.access_key_id
      account_id        = cloudflare_api_token.value.account_id
      secret_access_key = cloudflare_api_token.value.secret_access_key
    }
  }

  dynamic "databricks_gcp_service_account" {
    for_each = each.value.databricks_gcp_service_account != null ? [each.value.databricks_gcp_service_account] : []
    content {
      credential_id = databricks_gcp_service_account.value.credential_id
      email         = databricks_gcp_service_account.value.email
    }
  }

  dynamic "gcp_service_account_key" {
    for_each = each.value.gcp_service_account_key != null ? [each.value.gcp_service_account_key] : []
    content {
      email          = gcp_service_account_key.value.email
      private_key    = gcp_service_account_key.value.private_key
      private_key_id = gcp_service_account_key.value.private_key_id
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

