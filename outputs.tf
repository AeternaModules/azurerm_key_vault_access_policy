output "key_vault_access_policies_application_id" {
  description = "Map of application_id values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.application_id }
}
output "key_vault_access_policies_certificate_permissions" {
  description = "Map of certificate_permissions values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.certificate_permissions }
}
output "key_vault_access_policies_key_permissions" {
  description = "Map of key_permissions values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.key_permissions }
}
output "key_vault_access_policies_key_vault_id" {
  description = "Map of key_vault_id values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.key_vault_id }
}
output "key_vault_access_policies_object_id" {
  description = "Map of object_id values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.object_id }
}
output "key_vault_access_policies_secret_permissions" {
  description = "Map of secret_permissions values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.secret_permissions }
}
output "key_vault_access_policies_storage_permissions" {
  description = "Map of storage_permissions values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.storage_permissions }
}
output "key_vault_access_policies_tenant_id" {
  description = "Map of tenant_id values across all key_vault_access_policies, keyed the same as var.key_vault_access_policies"
  value       = { for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : k => v.tenant_id }
}

