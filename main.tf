data "oci_database_scheduled_action_params" "database_scheduled_action_params_lookup" {
  for_each = var.database_scheduled_action_params_lookup

  type = each.value.type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

