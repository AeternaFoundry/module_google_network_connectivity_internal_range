output "network_connectivity_internal_ranges_id" {
  description = "Map of id values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no id are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_connectivity_internal_ranges_allocation_options" {
  description = "Map of allocation_options values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no allocation_options are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => one(v.allocation_options) if v.allocation_options != null && length(v.allocation_options) > 0 }
}
output "network_connectivity_internal_ranges_deletion_policy" {
  description = "Map of deletion_policy values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no deletion_policy are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "network_connectivity_internal_ranges_description" {
  description = "Map of description values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no description are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_connectivity_internal_ranges_effective_labels" {
  description = "Map of effective_labels values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no effective_labels are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "network_connectivity_internal_ranges_exclude_cidr_ranges" {
  description = "Map of exclude_cidr_ranges values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no exclude_cidr_ranges are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.exclude_cidr_ranges if v.exclude_cidr_ranges != null && length(v.exclude_cidr_ranges) > 0 }
}
output "network_connectivity_internal_ranges_immutable" {
  description = "Map of immutable values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no immutable are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.immutable if v.immutable != null }
}
output "network_connectivity_internal_ranges_ip_cidr_range" {
  description = "Map of ip_cidr_range values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no ip_cidr_range are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.ip_cidr_range if v.ip_cidr_range != null && length(v.ip_cidr_range) > 0 }
}
output "network_connectivity_internal_ranges_labels" {
  description = "Map of labels values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no labels are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "network_connectivity_internal_ranges_migration" {
  description = "Map of migration values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no migration are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => one(v.migration) if v.migration != null && length(v.migration) > 0 }
}
output "network_connectivity_internal_ranges_name" {
  description = "Map of name values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no name are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_connectivity_internal_ranges_network" {
  description = "Map of network values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no network are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.network if v.network != null && length(v.network) > 0 }
}
output "network_connectivity_internal_ranges_overlaps" {
  description = "Map of overlaps values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no overlaps are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.overlaps if v.overlaps != null && length(v.overlaps) > 0 }
}
output "network_connectivity_internal_ranges_peering" {
  description = "Map of peering values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no peering are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.peering if v.peering != null && length(v.peering) > 0 }
}
output "network_connectivity_internal_ranges_prefix_length" {
  description = "Map of prefix_length values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no prefix_length are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.prefix_length if v.prefix_length != null }
}
output "network_connectivity_internal_ranges_project" {
  description = "Map of project values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no project are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.project if v.project != null && length(v.project) > 0 }
}
output "network_connectivity_internal_ranges_target_cidr_range" {
  description = "Map of target_cidr_range values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no target_cidr_range are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.target_cidr_range if v.target_cidr_range != null && length(v.target_cidr_range) > 0 }
}
output "network_connectivity_internal_ranges_terraform_labels" {
  description = "Map of terraform_labels values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no terraform_labels are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "network_connectivity_internal_ranges_usage" {
  description = "Map of usage values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no usage are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.usage if v.usage != null && length(v.usage) > 0 }
}
output "network_connectivity_internal_ranges_users" {
  description = "Map of users values across all network_connectivity_internal_ranges, keyed the same as var.network_connectivity_internal_ranges except keys with no users are omitted"
  value       = { for k, v in google_network_connectivity_internal_range.network_connectivity_internal_ranges : k => v.users if v.users != null && length(v.users) > 0 }
}

