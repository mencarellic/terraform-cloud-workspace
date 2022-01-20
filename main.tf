resource "tfe_organization" "carlo-cloud" {
  name                     = "Carlo-Cloud"
  email                    = "me@carlo.cloud"
  collaborator_auth_policy = "two_factor_mandatory"
}

resource "tfe_team" "cloud-engineering" {
  name         = "cloud-engineering"
  organization = tfe_organization.carlo-cloud.name
}

resource "tfe_team" "security" {
  name         = "security"
  organization = tfe_organization.carlo-cloud.name
}

resource "tfe_team" "quality-assurance" {
  name         = "quality-assurance"
  organization = tfe_organization.carlo-cloud.name
}

resource "tfe_team" "application-a" {
  name         = "application-a"
  organization = tfe_organization.carlo-cloud.name
}

resource "tfe_team" "application-b" {
  name         = "application-b"
  organization = tfe_organization.carlo-cloud.name
}

resource "tfe_workspace" "aws-development" {
  name         = "aws-development"
  organization = tfe_organization.carlo-cloud.name
  tag_names    = ["aws", "dev"]
}

resource "tfe_workspace" "azure-development" {
  name         = "azure-development"
  organization = tfe_organization.carlo-cloud.name
  tag_names    = ["azure", "dev"]
}

resource "tfe_workspace" "aws-production" {
  name         = "aws-production"
  organization = tfe_organization.carlo-cloud.name
  tag_names    = ["aws", "prod"]
}

resource "tfe_workspace" "azure-production" {
  name         = "azure-production"
  organization = tfe_organization.carlo-cloud.name
  tag_names    = ["azure", "prod"]
}

resource "tfe_workspace" "external-pagerduty" {
  name         = "external-pagerduty"
  organization = tfe_organization.carlo-cloud.name
  tag_names    = ["external"]
}

resource "tfe_workspace" "external-datadog" {
  name         = "external-datadog"
  organization = tfe_organization.carlo-cloud.name
  tag_names    = ["external"]
}

resource "tfe_workspace" "external-github" {
  name         = "external-github"
  organization = tfe_organization.carlo-cloud.name
  tag_names    = ["external"]
}
