variable "application_registrations" {
  description = <<EOT
Map of application_registrations, attributes below
Required:
    - display_name
Optional:
    - description
    - group_membership_claims
    - homepage_url
    - implicit_access_token_issuance_enabled
    - implicit_id_token_issuance_enabled
    - logout_url
    - marketing_url
    - notes
    - privacy_statement_url
    - requested_access_token_version
    - service_management_reference
    - sign_in_audience
    - support_url
    - terms_of_service_url
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    display_name                           = string
    description                            = optional(string)
    group_membership_claims                = optional(set(string))
    homepage_url                           = optional(string)
    implicit_access_token_issuance_enabled = optional(bool)
    implicit_id_token_issuance_enabled     = optional(bool)
    logout_url                             = optional(string)
    marketing_url                          = optional(string)
    notes                                  = optional(string)
    privacy_statement_url                  = optional(string)
    requested_access_token_version         = optional(number)
    service_management_reference           = optional(string)
    sign_in_audience                       = optional(string)
    support_url                            = optional(string)
    terms_of_service_url                   = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_registrations : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_registrations : (
        v.description == null || (length(v.description) <= 1024)
      )
    ])
    error_message = "must be at most 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_registrations : (
        v.notes == null || (length(v.notes) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_registrations : (
        v.requested_access_token_version == null || (v.requested_access_token_version >= 1 && v.requested_access_token_version <= 2)
      )
    ])
    error_message = "must be between 1 and 2"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_registrations : (
        v.service_management_reference == null || (length(v.service_management_reference) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

