variable "network_connectivity_internal_ranges" {
  description = <<EOT
Map of network_connectivity_internal_ranges, attributes below
Required:
    - name
    - network
    - peering
    - usage
Optional:
    - deletion_policy
    - description
    - exclude_cidr_ranges
    - immutable
    - ip_cidr_range
    - labels
    - overlaps
    - prefix_length
    - project
    - target_cidr_range
    - allocation_options (block):
        - allocation_strategy (optional)
        - first_available_ranges_lookup_size (optional)
    - migration (block):
        - source (required)
        - target (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                = string
    network             = string
    peering             = string
    usage               = string
    deletion_policy     = optional(string)
    description         = optional(string)
    exclude_cidr_ranges = optional(list(string))
    immutable           = optional(bool)
    ip_cidr_range       = optional(string)
    labels              = optional(map(string))
    overlaps            = optional(list(string))
    prefix_length       = optional(number)
    project             = optional(string)
    target_cidr_range   = optional(list(string))
    allocation_options = optional(object({
      allocation_strategy                = optional(string)
      first_available_ranges_lookup_size = optional(number)
    }))
    migration = optional(object({
      source = string
      target = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.network_connectivity_internal_ranges : (
        v.allocation_options == null || (v.allocation_options.first_available_ranges_lookup_size == null || (v.allocation_options.first_available_ranges_lookup_size >= 1))
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

