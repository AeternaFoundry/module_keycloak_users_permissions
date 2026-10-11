output "users_permissions_id" {
  description = "Map of id values across all users_permissions, keyed the same as var.users_permissions except keys with no id are omitted"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "users_permissions_authorization_resource_server_id" {
  description = "Map of authorization_resource_server_id values across all users_permissions, keyed the same as var.users_permissions except keys with no authorization_resource_server_id are omitted"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => v.authorization_resource_server_id if v.authorization_resource_server_id != null && length(v.authorization_resource_server_id) > 0 }
}
output "users_permissions_enabled" {
  description = "Map of enabled values across all users_permissions, keyed the same as var.users_permissions except keys with no enabled are omitted"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => v.enabled if v.enabled != null }
}
output "users_permissions_impersonate_scope" {
  description = "Map of impersonate_scope values across all users_permissions, keyed the same as var.users_permissions except keys with no impersonate_scope are omitted"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.impersonate_scope) if v.impersonate_scope != null && length(v.impersonate_scope) > 0 }
}
output "users_permissions_manage_group_membership_scope" {
  description = "Map of manage_group_membership_scope values across all users_permissions, keyed the same as var.users_permissions except keys with no manage_group_membership_scope are omitted"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.manage_group_membership_scope) if v.manage_group_membership_scope != null && length(v.manage_group_membership_scope) > 0 }
}
output "users_permissions_manage_scope" {
  description = "Map of manage_scope values across all users_permissions, keyed the same as var.users_permissions except keys with no manage_scope are omitted"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.manage_scope) if v.manage_scope != null && length(v.manage_scope) > 0 }
}
output "users_permissions_map_roles_scope" {
  description = "Map of map_roles_scope values across all users_permissions, keyed the same as var.users_permissions except keys with no map_roles_scope are omitted"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.map_roles_scope) if v.map_roles_scope != null && length(v.map_roles_scope) > 0 }
}
output "users_permissions_realm_id" {
  description = "Map of realm_id values across all users_permissions, keyed the same as var.users_permissions except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}
output "users_permissions_user_impersonated_scope" {
  description = "Map of user_impersonated_scope values across all users_permissions, keyed the same as var.users_permissions except keys with no user_impersonated_scope are omitted"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.user_impersonated_scope) if v.user_impersonated_scope != null && length(v.user_impersonated_scope) > 0 }
}
output "users_permissions_view_scope" {
  description = "Map of view_scope values across all users_permissions, keyed the same as var.users_permissions except keys with no view_scope are omitted"
  value       = { for k, v in keycloak_users_permissions.users_permissions : k => one(v.view_scope) if v.view_scope != null && length(v.view_scope) > 0 }
}

