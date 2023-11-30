
## Policy Sets
resource "tfe_policy_set" "all-pass-set" {
  name          = "all-pass-set"
  description   = "A brand new policy set"
  organization  = data.tfe_organization.org.name
  kind          = "sentinel"
  policy_ids    = [
    tfe_policy.hard-mandatory-pass-policy.id,
    tfe_policy.advisory-pass-policy.id,
    tfe_policy.soft-mandatory-pass-policy.id
  ]
  global = true
}

resource "tfe_policy_set" "all-fail-set" {
  name          = "all-fail-set"
  description   = "A brand new policy set"
  organization  = data.tfe_organization.org.name
  kind          = "sentinel"
  policy_ids    = [
    tfe_policy.soft-mandatory-fail-policy.id,
    tfe_policy.advisory-fail-policy.id,
    tfe_policy.hard-mandatory-fail-policy.id
  ]
}

resource "tfe_policy_set" "mix-policy-set" {
  name          = "mix-policy-set"
  description   = "A brand new policy set"
  organization  = data.tfe_organization.org.name
  kind          = "sentinel"
  policy_ids    = [
    tfe_policy.hard-mandatory-pass-policy.id,
    tfe_policy.advisory-fail-policy.id,
    tfe_policy.hard-mandatory-fail-policy.id
  ]
  global = true
}

## Policies
resource "tfe_policy" "hard-mandatory-pass-policy" {
  name         = "hard-mandatory-pass-policy"
  description  = "This policy always passes"
  organization =  data.tfe_organization.org.name
  kind         = "sentinel"
  policy       = "main = rule { true }"
  enforce_mode = "hard-mandatory"
}

resource "tfe_policy" "advisory-pass-policy" {
  name         = "advisory-pass-policy"
  description  = "This policy always passes"
  organization =  data.tfe_organization.org.name
  kind         = "sentinel"
  policy       = "main = rule { true }"
  enforce_mode = "advisory"
}

resource "tfe_policy" "soft-mandatory-pass-policy" {
  name         = "soft-mandatory-pass-policy"
  description  = "This policy always passes"
  organization =  data.tfe_organization.org.name
  kind         = "sentinel"
  policy       = "main = rule { true }"
  enforce_mode = "soft-mandatory"
}

resource "tfe_policy" "soft-mandatory-fail-policy" {
  name         = "soft-mandatory-fail-policy"
  description  = "This policy always fails"
  organization =  data.tfe_organization.org.name
  kind         = "sentinel"
  policy       = "main = rule { false }"
  enforce_mode = "soft-mandatory"
}

resource "tfe_policy" "advisory-fail-policy" {
  name         = "advisory-fail-policy"
  description  = "This policy always fails"
  organization =  data.tfe_organization.org.name
  kind         = "sentinel"
  policy       = "main = rule { false }"
  enforce_mode = "advisory"
}

resource "tfe_policy" "hard-mandatory-fail-policy" {
  name         = "hard-mandatory-fail-policy"
  description  = "This policy always fails"
  organization =  data.tfe_organization.org.name
  kind         = "sentinel"
  policy       = "main = rule { false }"
  enforce_mode = "hard-mandatory"
}
