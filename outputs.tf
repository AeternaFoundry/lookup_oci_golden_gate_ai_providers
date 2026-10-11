output "golden_gate_ai_providers_lookup_id" {
  description = "Map of id values across all golden_gate_ai_providers_lookup, keyed the same as var.golden_gate_ai_providers_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_golden_gate_ai_providers.golden_gate_ai_providers_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "golden_gate_ai_providers_lookup_ai_provider_collection" {
  description = "Map of ai_provider_collection values across all golden_gate_ai_providers_lookup, keyed the same as var.golden_gate_ai_providers_lookup except keys with no ai_provider_collection are omitted"
  value       = { for k, v in data.oci_golden_gate_ai_providers.golden_gate_ai_providers_lookup : k => v.ai_provider_collection if v.ai_provider_collection != null && length(v.ai_provider_collection) > 0 }
}
output "golden_gate_ai_providers_lookup_compartment_id" {
  description = "Map of compartment_id values across all golden_gate_ai_providers_lookup, keyed the same as var.golden_gate_ai_providers_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_golden_gate_ai_providers.golden_gate_ai_providers_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "golden_gate_ai_providers_lookup_filter" {
  description = "Map of filter values across all golden_gate_ai_providers_lookup, keyed the same as var.golden_gate_ai_providers_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_golden_gate_ai_providers.golden_gate_ai_providers_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

