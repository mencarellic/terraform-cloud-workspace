resource "tfe_organization" "carlo-cloud" {
  name                     = "Carlo-Cloud"
  email                    = "me@carlo.cloud"
  collaborator_auth_policy = "two_factor_mandatory"
}

resource "tfe_project" "production" {
  organization = tfe_organization.carlo-cloud.name
  name = "Production"
}

resource "tfe_project" "examples" {
  organization = tfe_organization.carlo-cloud.name
  name = "Examples"
}