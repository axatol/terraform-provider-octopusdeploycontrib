terraform {
  required_providers {
    octopusdeploy = {
      source = "registry.terraform.io/OctopusDeployLabs/octopusdeploy"
    }

    octopusdeploycontrib = {
      source = "registry.terraform.io/axatol/octopusdeploycontrib"
    }
  }
}

provider "octopusdeploy" {
  address  = "https://octopus.k8s.axatol.xyz"
  space_id = "Spaces-1"
}

provider "octopusdeploycontrib" {
  server_url = "https://octopus.k8s.axatol.xyz"
  space_id   = "Spaces-1"
}
