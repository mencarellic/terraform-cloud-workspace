data "tfe_oauth_client" "mencarellic" {
  organization     = tfe_organization.carlo-cloud.name
  service_provider = "github"
}