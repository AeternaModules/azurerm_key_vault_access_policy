output "key_vault_access_policies_id" {
  description = "Map of id values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_vault_access_policies_application_id" {
  description = "Map of application_id values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "key_vault_access_policies_certificate_permissions" {
  description = "Map of certificate_permissions values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.certificate_permissions if v.certificate_permissions != null && length(v.certificate_permissions) > 0 }
}
output "key_vault_access_policies_key_permissions" {
  description = "Map of key_permissions values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.key_permissions if v.key_permissions != null && length(v.key_permissions) > 0 }
}
output "key_vault_access_policies_key_vault_id" {
  description = "Map of key_vault_id values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.key_vault_id if v.key_vault_id != null && length(v.key_vault_id) > 0 }
}
output "key_vault_access_policies_object_id" {
  description = "Map of object_id values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.object_id if v.object_id != null && length(v.object_id) > 0 }
}
output "key_vault_access_policies_secret_permissions" {
  description = "Map of secret_permissions values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.secret_permissions if v.secret_permissions != null && length(v.secret_permissions) > 0 }
}
output "key_vault_access_policies_storage_permissions" {
  description = "Map of storage_permissions values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.storage_permissions if v.storage_permissions != null && length(v.storage_permissions) > 0 }
}
output "key_vault_access_policies_tenant_id" {
  description = "Map of tenant_id values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}

