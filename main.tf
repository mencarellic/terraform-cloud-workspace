resource "tfe_organization" "carlo-cloud" {
  name                     = "Carlo-Cloud"
  email                    = "me@carlo.cloud"
  collaborator_auth_policy = "two_factor_mandatory"
}

resource "tfe_workspace" "aws-development" {
  name              = "aws-development"
  organization      = tfe_organization.carlo-cloud.name
  terraform_version = var.terraform-version
  tag_names         = ["aws", "dev"]
}

resource "tfe_variable" "aws-development-key" {
  key          = "secret_key"
  value        = var.aws-dev-key
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.aws-development.id
}

resource "tfe_workspace" "azure-development" {
  name              = "azure-development"
  organization      = tfe_organization.carlo-cloud.name
  terraform_version = var.terraform-version
  tag_names         = ["azure", "dev"]
}

resource "tfe_variable" "azure-development-key" {
  key          = "secret_key"
  value        = var.azure-dev-key
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.azure-development.id
}

resource "tfe_workspace" "aws-production" {
  name              = "aws-production"
  organization      = tfe_organization.carlo-cloud.name
  terraform_version = var.terraform-version
  tag_names         = ["aws", "prod"]
}

resource "tfe_variable" "aws-production-key" {
  key          = "secret_key"
  value        = var.aws-prod-key
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.aws-production.id
}

resource "tfe_workspace" "azure-production" {
  name              = "azure-production"
  organization      = tfe_organization.carlo-cloud.name
  terraform_version = var.terraform-version
  tag_names         = ["azure", "prod"]
}

resource "tfe_variable" "azure-production-key" {
  key          = "secret_key"
  value        = var.azure-prod-key
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.azure-production.id
}

resource "tfe_workspace" "external-pagerduty" {
  name              = "external-pagerduty"
  organization      = tfe_organization.carlo-cloud.name
  terraform_version = var.terraform-version
  tag_names         = ["external"]
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
