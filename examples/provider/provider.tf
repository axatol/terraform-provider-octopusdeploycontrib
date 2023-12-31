terraform {
  required_providers {
    octopusdeploycontrib = {
      source = "registry.terraform.io/axatol/octopusdeploycontrib"
    }
  }
}

provider "octopusdeploycontrib" {
  space_id   = "Spaces-1"
  api_key    = "API-***"
  server_url = "https://samples.octopus.app"
}
