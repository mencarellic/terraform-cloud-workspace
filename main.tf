resource "tfe_organization" "carlo-cloud" {
  name                     = "Carlo-Cloud"
  email                    = "me@carlo.cloud"
  collaborator_auth_policy = "two_factor_mandatory"
}
