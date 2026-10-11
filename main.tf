data "oci_golden_gate_ai_providers" "golden_gate_ai_providers_lookup" {
  for_each = var.golden_gate_ai_providers_lookup

  compartment_id = each.value.compartment_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

