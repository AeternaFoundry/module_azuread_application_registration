output "application_registrations_id" {
  description = "Map of id values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.id }
}
output "application_registrations_client_id" {
  description = "Map of client_id values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.client_id }
}
output "application_registrations_description" {
  description = "Map of description values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.description }
}
output "application_registrations_disabled_by_microsoft" {
  description = "Map of disabled_by_microsoft values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.disabled_by_microsoft }
}
output "application_registrations_display_name" {
  description = "Map of display_name values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.display_name }
}
output "application_registrations_group_membership_claims" {
  description = "Map of group_membership_claims values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.group_membership_claims }
}
output "application_registrations_homepage_url" {
  description = "Map of homepage_url values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.homepage_url }
}
output "application_registrations_implicit_access_token_issuance_enabled" {
  description = "Map of implicit_access_token_issuance_enabled values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.implicit_access_token_issuance_enabled }
}
output "application_registrations_implicit_id_token_issuance_enabled" {
  description = "Map of implicit_id_token_issuance_enabled values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.implicit_id_token_issuance_enabled }
}
output "application_registrations_logout_url" {
  description = "Map of logout_url values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.logout_url }
}
output "application_registrations_marketing_url" {
  description = "Map of marketing_url values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.marketing_url }
}
output "application_registrations_notes" {
  description = "Map of notes values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.notes }
}
output "application_registrations_object_id" {
  description = "Map of object_id values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.object_id }
}
output "application_registrations_privacy_statement_url" {
  description = "Map of privacy_statement_url values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.privacy_statement_url }
}
output "application_registrations_publisher_domain" {
  description = "Map of publisher_domain values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.publisher_domain }
}
output "application_registrations_requested_access_token_version" {
  description = "Map of requested_access_token_version values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.requested_access_token_version }
}
output "application_registrations_service_management_reference" {
  description = "Map of service_management_reference values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.service_management_reference }
}
output "application_registrations_sign_in_audience" {
  description = "Map of sign_in_audience values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.sign_in_audience }
}
output "application_registrations_support_url" {
  description = "Map of support_url values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.support_url }
}
output "application_registrations_terms_of_service_url" {
  description = "Map of terms_of_service_url values across all application_registrations, keyed the same as var.application_registrations"
  value       = { for k, v in azuread_application_registration.application_registrations : k => v.terms_of_service_url }
}

