---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "octopusdeploycontrib_aws_oidc_account Resource - terraform-provider-octopusdeploycontrib"
subcategory: ""
description: |-
  The AWS OIDC account resource.
---

# octopusdeploycontrib_aws_oidc_account (Resource)

The AWS OIDC account resource.

## Example Usage

```terraform
resource "octopusdeploycontrib_aws_oidc_account" "aws" {
  name                              = "aws"
  role_arn                          = "arn:aws:iam::000000000000:role/some-role"
  tenanted_deployment_participation = "TenantedOrUntenanted"
  environment_ids                   = ["Environments-366"]                                         # sandbox
  tenant_ids                        = ["Tenants-398", "Tenants-390", "Tenants-388", "Tenants-389"] # regions

  # Deployment: space:[space-slug]:project:[project-slug]:tenant:[tenant-slug]:environment:[environment-slug]:account:[account-slug]
  # Runbook: space:[space-slug]:project:[project-slug]:runbook:[runbook-slug]:tenant:[tenant-slug]:environment:[environment-slug]:account:[account-slug]
  deployment_subject_keys = ["space", "account", "environment", "project", "tenant", "runbook"]

  # space:[space-slug]:account:[account-slug]:type:health
  health_check_subject_keys = ["space", "account", "type"]

  # space:[space-slug]:account:[account-slug]:type:health
  account_test_subject_keys = ["space", "account", "type"]
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `name` (String) The name of the account.
- `role_arn` (String) The role ARN of the account.
- `tenanted_deployment_participation` (String) The tenanted deployment participation of the account.

### Optional

- `account_test_subject_keys` (List of String) Subject claims to include when using this account for account tests.
- `deployment_subject_keys` (List of String) Subject claims to include when using this account for deployments.
- `description` (String) The description of the account.
- `environment_ids` (List of String) The environment IDs of the account.
- `health_check_subject_keys` (List of String) Subject claims to include when using this account for health checks.
- `session_duration` (String) The session duration of the account.
- `space_id` (String) The space ID.
- `tenant_ids` (List of String) The tenant IDs of the account.
- `tenant_tags` (List of String) The tenant tags of the account.

### Read-Only

- `id` (String) The ID of the account.
- `slug` (String) The slug of the account.
