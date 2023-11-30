resource "tfe_workspace" "tf-workspace-1" {
  name              = "my-monorepo-1"
  organization      = data.tfe_organization.org.name
  working_directory = "./my-monorepo-1"
  auto_apply        = true

  vcs_repo {
    identifier     = var.GITHUB_REPO_IDENTIFIER
    oauth_token_id = data.tfe_oauth_client.oauth-client.oauth_token_id
  }
}
resource "tfe_workspace" "tf-workspace-2" {
  name              = "my-monorepo-2"
  organization      = data.tfe_organization.org.name
  working_directory = "./my-monorepo-2"
  auto_apply        = true

  vcs_repo {
    identifier     = var.GITHUB_REPO_IDENTIFIER
    oauth_token_id = data.tfe_oauth_client.oauth-client.oauth_token_id
  }
}
resource "tfe_workspace" "tf-workspace-3" {
  name              = "my-monorepo-3"
  organization      = data.tfe_organization.org.name
  working_directory = "./my-monorepo-3"
  auto_apply        = true

  vcs_repo {
    identifier     = var.GITHUB_REPO_IDENTIFIER
    oauth_token_id = data.tfe_oauth_client.oauth-client.oauth_token_id
  }
}
resource "tfe_workspace" "tf-workspace-4" {
  name              = "my-monorepo-4"
  organization      = data.tfe_organization.org.name
  working_directory = "./my-monorepo-4"
  auto_apply        = true

  vcs_repo {
    identifier     = var.GITHUB_REPO_IDENTIFIER
    oauth_token_id = data.tfe_oauth_client.oauth-client.oauth_token_id
  }
}
resource "tfe_workspace" "tf-workspace-5" {
  name              = "my-monorepo-5"
  organization      = data.tfe_organization.org.name
  working_directory = "./my-monorepo-5"
  auto_apply        = true

  vcs_repo {
    identifier     = var.GITHUB_REPO_IDENTIFIER
    oauth_token_id = data.tfe_oauth_client.oauth-client.oauth_token_id
  }
}
resource "tfe_workspace" "tf-workspace-6" {
  name              = "my-monorepo-6"
  organization      = data.tfe_organization.org.name
  working_directory = "./my-monorepo-6"
  auto_apply        = true

  vcs_repo {
    identifier     = var.GITHUB_REPO_IDENTIFIER
    oauth_token_id = data.tfe_oauth_client.oauth-client.oauth_token_id
  }
}
resource "tfe_workspace" "tf-workspace-7" {
  name              = "my-monorepo-7"
  organization      = data.tfe_organization.org.name
  working_directory = "./my-monorepo-7"
  auto_apply        = true

  vcs_repo {
    identifier     = var.GITHUB_REPO_IDENTIFIER
    oauth_token_id = data.tfe_oauth_client.oauth-client.oauth_token_id
  }
}
resource "tfe_workspace" "tf-workspace-8" {
  name              = "my-monorepo-8"
  organization      = data.tfe_organization.org.name
  working_directory = "./my-monorepo-8"
  auto_apply        = true

  vcs_repo {
    identifier     = var.GITHUB_REPO_IDENTIFIER
    oauth_token_id = data.tfe_oauth_client.oauth-client.oauth_token_id
  }
}
resource "tfe_workspace" "tf-workspace-9" {
  name              = "my-monorepo-9"
  organization      = data.tfe_organization.org.name
  working_directory = "./my-monorepo-9"
  auto_apply        = true

  vcs_repo {
    identifier     = var.GITHUB_REPO_IDENTIFIER
    oauth_token_id = data.tfe_oauth_client.oauth-client.oauth_token_id
  }
}
resource "tfe_workspace" "tf-workspace-10" {
  name              = "my-monorepo-10"
  organization      = data.tfe_organization.org.name
  working_directory = "./my-monorepo-10"
  auto_apply        = true

  vcs_repo {
    identifier     = var.GITHUB_REPO_IDENTIFIER
    oauth_token_id = data.tfe_oauth_client.oauth-client.oauth_token_id
  }
}
