resource "tfe_organization_run_task" "pass-run-task" {
  organization = data.tfe_organization.org.name
  url          = "http://testing-mocks.tfe:22180/runtasks/pass"
  name         = "pass-run-task"
  enabled      = true
  description  = "An example task"
}

resource "tfe_organization_run_task" "fail-run-task" {
  organization = data.tfe_organization.org.name
  url          = "http://testing-mocks.tfe:22180/runtasks/fail"
  name         = "fail-run-task"
  enabled      = true
  description  = "An example task"
}

## Uncomment to attach to any of the generated workspaces
# resource "tfe_workspace_run_task" "pre-plan-pass" {
#   workspace_id      = resource.tfe_workspace.{}.id
#   task_id           = resource.tfe_organization_run_task.pass-run-task.id
#   enforcement_level = "advisory"
#   stage = "pre_plan"
# }

# resource "tfe_workspace_run_task" "post-plan-pass" {
#   workspace_id      = resource.tfe_workspace.{}.id
#   task_id           = resource.tfe_organization_run_task.pass-run-task.id
#   enforcement_level = "advisory"
#   stage = "post_plan"
# }

# resource "tfe_workspace_run_task" "pre-apply-pass" {
#   workspace_id      = resource.tfe_workspace.{}.id
#   task_id           = resource.tfe_organization_run_task.pass-run-task.id
#   enforcement_level = "advisory" # or mandatory
#   stage = "pre_apply"
# }

## fails
# resource "tfe_workspace_run_task" "pre-plan-fail" {
#   workspace_id      = resource.tfe_workspace.{}.id
#   task_id           = resource.tfe_organization_run_task.fail-run-task.id
#   enforcement_level = "mandatory" # or advisory
#   stage = "pre_plan"
# }

# resource "tfe_workspace_run_task" "post-plan-fail" {
#   workspace_id      = resource.tfe_workspace.{}.id
#   task_id           = resource.tfe_organization_run_task.fail-run-task.id
#   enforcement_level = "mandatory" or advisory
#   stage = "post_plan"
# }

# resource "tfe_workspace_run_task" "pre-apply-fail" {
#   workspace_id      = resource.tfe_workspace.{}.id
#   task_id           = resource.tfe_organization_run_task.fail-run-task.id
#   enforcement_level = "advisory" or mandatory
#   stage = "pre_apply"
# }
