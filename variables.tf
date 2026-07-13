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
  # --- Unconfirmed validation candidates, derived from azurerm_key_vault_access_policy's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: key_vault_id
  #   source:    [from validationFunctionForResourceID] !ok
  # path: key_vault_id
  #   source:    [from validationFunctionForResourceID] err != nil
  # path: tenant_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: object_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: application_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: certificate_permissions[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: key_permissions[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: secret_permissions[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: storage_permissions[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

