resource "tfe_workspace" "carlo-is" {
  name              = "carlo-is"
  organization      = tfe_organization.carlo-cloud.name
  working_directory = "terraform"

  vcs_repo {
    identifier     = "mencarellic/carlo-is"
    oauth_token_id = data.tfe_oauth_client.mencarellic.oauth_token_id
  }
}

resource "tfe_workspace" "summit-cloud-solutions" {
  name              = "summit-cloud-solutions"
  organization      = tfe_organization.carlo-cloud.name
  working_directory = "terraform"

  vcs_repo {
    identifier     = "mencarellic/summit-cloud-solutions"
    oauth_token_id = data.tfe_oauth_client.mencarellic.oauth_token_id
  }
}
