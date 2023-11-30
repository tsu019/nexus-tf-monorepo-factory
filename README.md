# Nexus Terraform Monorepo Factory

Template repository used to generate a monorepo to test/experiment with VCS related integrations with tfcdev and or TFC/E.

## About

(Inspired by [zainq11/tfc-monorepo-1000](https://github.com/zainq11/tfc-monorepo-1000))

This will generate files, directories, and Terraform configuration that will provision resources for the target environment (*controlled by `TFE_HOSTNAME` Terraform variable*)

You can modify/add/change to suit your monorepo testing needs.

## Instructions

### Pre-requisites
* Have an existing GitHub TFC OAuth Client in your tflocal/tfcdev
* Have an existing TFC Organization
* Generate an TFC User API Token

#### *If using Run Tasks*
- Clone [tf-testing-mocks](https://github.com/hashicorp/tf-testing-mocks)
- Startup with `tfcdev stack build` && `tfcdev stack up`
- Add the *outbound-http-proxy* following to your atlas docker-compose override file.

<details>
  <summary>outbound-http-proxy</summary>

  ```yaml
outbound-http-proxy:
  command: "sh -c './outbound-http-proxy --dev --config-file config/config.yaml --egress-acl-file config/acl.yaml --allow-address 127.0.0.1:22180 --allow-address $(getent hosts testing-mocks.tfe | cut -f1 -d\\ ):22180'"
```

</details>

### Use Template
* Generate a new repository from this template
* Clone your new repository to your local machine
* Make any modifications to [./scripts/workspaces.tf.template](./scripts/workspaces.tf.template) template file to suite your specific needs. Reference [tfe-provider docs](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace)
* Run `make build`, input your options into the prompt. Depending on inputs, will generate x number of directories and Terraform resources to provision a monorepo setup.
* Check the generated files and configuration to make sure it matches your expectations.
* Commit the generated files and Terraform configuration and push to your remote repository.

### Local Terraform Setup
* Copy the `.auto.tfvars.copy` to `.auto.tfvars`, and fill in the information
* CD into `cloud` directory
* Execute Terraform, `terraform init && terraform apply --auto-approve`

