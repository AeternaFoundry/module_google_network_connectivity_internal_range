resource "google_network_connectivity_internal_range" "network_connectivity_internal_ranges" {
  for_each = var.network_connectivity_internal_ranges

  name                = each.value.name
  network             = each.value.network
  peering             = each.value.peering
  usage               = each.value.usage
  deletion_policy     = each.value.deletion_policy
  description         = each.value.description
  exclude_cidr_ranges = each.value.exclude_cidr_ranges
  immutable           = each.value.immutable
  ip_cidr_range       = each.value.ip_cidr_range
  labels              = each.value.labels
  overlaps            = each.value.overlaps
  prefix_length       = each.value.prefix_length
  project             = each.value.project
  target_cidr_range   = each.value.target_cidr_range

  dynamic "allocation_options" {
    for_each = each.value.allocation_options != null ? [each.value.allocation_options] : []
    content {
      allocation_strategy                = allocation_options.value.allocation_strategy
      first_available_ranges_lookup_size = allocation_options.value.first_available_ranges_lookup_size
    }
  }

  dynamic "migration" {
    for_each = each.value.migration != null ? [each.value.migration] : []
    content {
      source = migration.value.source
      target = migration.value.target
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

