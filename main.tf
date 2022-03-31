resource "tfe_organization" "carlo-cloud" {
  name                     = "Carlo-Cloud"
  email                    = "me@carlo.cloud"
  collaborator_auth_policy = "two_factor_mandatory"
}

resource "tfe_workspace" "terraform-aws-mq-broker" {
  name         = "terraform-aws-mq-broker"
  organization = tfe_organization.carlo-cloud.name
}

