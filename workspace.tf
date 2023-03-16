resource "tfe_workspace" "carlo-is" {
  name         = "carlo-is"
  organization = tfe_organization.carlo-cloud.name
#   tag_names    = ["test", "app"]
}
