resource "keycloak_users_permissions" "users_permissions" {
  for_each = var.users_permissions

  realm_id = each.value.realm_id

  dynamic "impersonate_scope" {
    for_each = each.value.impersonate_scope != null ? [each.value.impersonate_scope] : []
    content {
      decision_strategy = impersonate_scope.value.decision_strategy
      description       = impersonate_scope.value.description
      policies          = impersonate_scope.value.policies
    }
  }

  dynamic "manage_group_membership_scope" {
    for_each = each.value.manage_group_membership_scope != null ? [each.value.manage_group_membership_scope] : []
    content {
      decision_strategy = manage_group_membership_scope.value.decision_strategy
      description       = manage_group_membership_scope.value.description
      policies          = manage_group_membership_scope.value.policies
    }
  }

  dynamic "manage_scope" {
    for_each = each.value.manage_scope != null ? [each.value.manage_scope] : []
    content {
      decision_strategy = manage_scope.value.decision_strategy
      description       = manage_scope.value.description
      policies          = manage_scope.value.policies
    }
  }

  dynamic "map_roles_scope" {
    for_each = each.value.map_roles_scope != null ? [each.value.map_roles_scope] : []
    content {
      decision_strategy = map_roles_scope.value.decision_strategy
      description       = map_roles_scope.value.description
      policies          = map_roles_scope.value.policies
    }
  }

  dynamic "user_impersonated_scope" {
    for_each = each.value.user_impersonated_scope != null ? [each.value.user_impersonated_scope] : []
    content {
      decision_strategy = user_impersonated_scope.value.decision_strategy
      description       = user_impersonated_scope.value.description
      policies          = user_impersonated_scope.value.policies
    }
  }

  dynamic "view_scope" {
    for_each = each.value.view_scope != null ? [each.value.view_scope] : []
    content {
      decision_strategy = view_scope.value.decision_strategy
      description       = view_scope.value.description
      policies          = view_scope.value.policies
    }
  }
}

