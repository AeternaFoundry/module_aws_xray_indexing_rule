output "xray_indexing_rules_name" {
  description = "Map of name values across all xray_indexing_rules, keyed the same as var.xray_indexing_rules"
  value       = { for k, v in aws_xray_indexing_rule.xray_indexing_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "xray_indexing_rules_region" {
  description = "Map of region values across all xray_indexing_rules, keyed the same as var.xray_indexing_rules"
  value       = { for k, v in aws_xray_indexing_rule.xray_indexing_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "xray_indexing_rules_rule" {
  description = "Map of rule values across all xray_indexing_rules, keyed the same as var.xray_indexing_rules"
  value       = { for k, v in aws_xray_indexing_rule.xray_indexing_rules : k => v.rule if v.rule != null && length(v.rule) > 0 }
}

