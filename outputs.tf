output "key_vault_access_policies" {
  description = "All key_vault_access_policy resources"
  value       = azurerm_key_vault_access_policy.key_vault_access_policies
}
output "key_vault_access_policies_application_id" {
  description = "List of application_id values across all key_vault_access_policies"
  value       = [for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : v.application_id]
}
output "key_vault_access_policies_certificate_permissions" {
  description = "List of certificate_permissions values across all key_vault_access_policies"
  value       = [for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : v.certificate_permissions]
}
output "key_vault_access_policies_key_permissions" {
  description = "List of key_permissions values across all key_vault_access_policies"
  value       = [for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : v.key_permissions]
}
output "key_vault_access_policies_key_vault_id" {
  description = "List of key_vault_id values across all key_vault_access_policies"
  value       = [for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : v.key_vault_id]
}
output "key_vault_access_policies_object_id" {
  description = "List of object_id values across all key_vault_access_policies"
  value       = [for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : v.object_id]
}
output "key_vault_access_policies_secret_permissions" {
  description = "List of secret_permissions values across all key_vault_access_policies"
  value       = [for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : v.secret_permissions]
}
output "key_vault_access_policies_storage_permissions" {
  description = "List of storage_permissions values across all key_vault_access_policies"
  value       = [for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : v.storage_permissions]
}
output "key_vault_access_policies_tenant_id" {
  description = "List of tenant_id values across all key_vault_access_policies"
  value       = [for k, v in azurerm_key_vault_access_policy.key_vault_access_policies : v.tenant_id]
}

