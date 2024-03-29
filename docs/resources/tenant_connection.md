---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "octopusdeploycontrib_tenant_connection Resource - terraform-provider-octopusdeploycontrib"
subcategory: ""
description: |-
  Use this resource to connect a project to a tenant and environments
---

# octopusdeploycontrib_tenant_connection (Resource)

Use this resource to connect a project to a tenant and environments

## Example Usage

```terraform
resource "octopusdeploy_tenant" "test" {
  name = "Test Tenant"
  lifecycle {
    ignore_changes = [project_environment]
  }
}

data "octopusdeploycontrib_project" "test" {
  name = "Test Project"
}

data "octopusdeploycontrib_environment" "development" {
  name = "Development"
}

data "octopusdeploycontrib_environment" "production" {
  name = "Production"
}

resource "octopusdeploycontrib_tenant_connection" "test" {
  tenant_id  = octopusdeploy_tenant.test.id
  project_id = data.octopusdeploycontrib_project.test.id
  environment_ids = [
    data.octopusdeploycontrib_environment.development.id,
    data.octopusdeploycontrib_environment.production.id,
  ]
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `project_id` (String) ID of the project to connect
- `tenant_id` (String) ID of the tenant to connect to

### Optional

- `environment_ids` (List of String) list of applicable environments to connect
- `space_id` (String) ID of the space to connect to
