data "tfe_oauth_client" "mencarellic" {
  organization     = tfe_organization.carlo-cloud.name
  name             = "Github"
  service_provider = "github"
}