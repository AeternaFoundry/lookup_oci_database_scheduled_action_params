variable "database_scheduled_action_params_lookup" {
  description = <<EOT
Map of database_scheduled_action_params_lookup, attributes below
Required:
    - type
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    type = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

