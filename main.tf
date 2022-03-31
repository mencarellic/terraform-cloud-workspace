resource "tfe_organization" "carlo-cloud" {
  name                     = "Carlo-Cloud"
  email                    = "me@carlo.cloud"
  collaborator_auth_policy = "two_factor_mandatory"
}

resource "tfe_workspace" "terraform-aws-mq-broker" {
  name              = "terraform-aws-mq-broker"
  organization      = tfe_organization.carlo-cloud.name
  terraform_version = var.terraform-version

  vcs_repo {
    identifier     = "mencarellic/terraform-aws-mq-broker"
    oauth_token_id = tfe_oauth_client.github.oauth_token_id
  }
}

data "tfe_oauth_client" "github" {
  oauth_client_id = "oc-hzaZFSBR6Dc6q2UW"
}
