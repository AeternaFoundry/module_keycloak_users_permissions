variable "users_permissions" {
  description = <<EOT
Map of users_permissions, attributes below
Required:
    - realm_id
Optional:
    - impersonate_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - manage_group_membership_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - manage_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - map_roles_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - user_impersonated_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - view_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
EOT

  type = map(object({
    realm_id = string
    impersonate_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    manage_group_membership_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    manage_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    map_roles_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    user_impersonated_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    view_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

