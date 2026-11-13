output "users_permissions_id" {
  description = "Map of id values across all users_permissions, keyed the same as var.users_permissions"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => v.id }
}
output "users_permissions_authorization_resource_server_id" {
  description = "Map of authorization_resource_server_id values across all users_permissions, keyed the same as var.users_permissions"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => v.authorization_resource_server_id }
}
output "users_permissions_enabled" {
  description = "Map of enabled values across all users_permissions, keyed the same as var.users_permissions"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => v.enabled }
}
output "users_permissions_impersonate_scope" {
  description = "Map of impersonate_scope values across all users_permissions, keyed the same as var.users_permissions"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.impersonate_scope) }
}
output "users_permissions_manage_group_membership_scope" {
  description = "Map of manage_group_membership_scope values across all users_permissions, keyed the same as var.users_permissions"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.manage_group_membership_scope) }
}
output "users_permissions_manage_scope" {
  description = "Map of manage_scope values across all users_permissions, keyed the same as var.users_permissions"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.manage_scope) }
}
output "users_permissions_map_roles_scope" {
  description = "Map of map_roles_scope values across all users_permissions, keyed the same as var.users_permissions"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.map_roles_scope) }
}
output "users_permissions_realm_id" {
  description = "Map of realm_id values across all users_permissions, keyed the same as var.users_permissions"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => v.realm_id }
}
output "users_permissions_user_impersonated_scope" {
  description = "Map of user_impersonated_scope values across all users_permissions, keyed the same as var.users_permissions"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.user_impersonated_scope) }
}
output "users_permissions_view_scope" {
  description = "Map of view_scope values across all users_permissions, keyed the same as var.users_permissions"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.view_scope) }
}

