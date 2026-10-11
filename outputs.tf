output "database_scheduled_action_params_lookup_id" {
  description = "Map of id values across all database_scheduled_action_params_lookup, keyed the same as var.database_scheduled_action_params_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_scheduled_action_params.database_scheduled_action_params_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_scheduled_action_params_lookup_action_param_values_collection" {
  description = "Map of action_param_values_collection values across all database_scheduled_action_params_lookup, keyed the same as var.database_scheduled_action_params_lookup except keys with no action_param_values_collection are omitted"
  value       = { for k, v in data.oci_database_scheduled_action_params.database_scheduled_action_params_lookup : k => v.action_param_values_collection if v.action_param_values_collection != null && length(v.action_param_values_collection) > 0 }
}
output "database_scheduled_action_params_lookup_filter" {
  description = "Map of filter values across all database_scheduled_action_params_lookup, keyed the same as var.database_scheduled_action_params_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_scheduled_action_params.database_scheduled_action_params_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_scheduled_action_params_lookup_type" {
  description = "Map of type values across all database_scheduled_action_params_lookup, keyed the same as var.database_scheduled_action_params_lookup except keys with no type are omitted"
  value       = { for k, v in data.oci_database_scheduled_action_params.database_scheduled_action_params_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

