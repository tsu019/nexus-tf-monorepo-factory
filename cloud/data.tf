data "tfe_organization" "org" {
  name = var.TFE_ORG
}

data "tfe_oauth_client" "oauth-client" {
  organization = data.tfe_organization.org.name
  name         = var.TFE_OAUTH_CLIENT_NAME
}


