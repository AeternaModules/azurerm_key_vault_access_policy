variable "key_vault_access_policies" {
  description = <<EOT
Map of key_vault_access_policies, attributes below
Required:
    - key_vault_id
    - object_id
    - tenant_id
Optional:
    - application_id
    - certificate_permissions
    - key_permissions
    - secret_permissions
    - storage_permissions
EOT

  type = map(object({
    key_vault_id            = string
    object_id               = string
    tenant_id               = string
    application_id          = optional(string)
    certificate_permissions = optional(list(string))
    key_permissions         = optional(list(string))
    secret_permissions      = optional(list(string))
    storage_permissions     = optional(list(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_vault_access_policies : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.tenant_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_access_policies : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.object_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_access_policies : (
        v.application_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.application_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

