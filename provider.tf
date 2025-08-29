terraform {
    backend "azurerm" {
    use_oidc             = true                                    # Can also be set via `ARM_USE_OIDC` environment variable.
    use_azuread_auth     = true                                    # Can also be set via `ARM_USE_AZUREAD` environment variable.
    tenant_id            = "d338749b-64ea-4a23-a656-91a484ece1dc"  # Can also be set via `ARM_TENANT_ID` environment variable.
    client_id            = "92a106ff-57e2-4da3-b271-2b6df87310b7"  # Can also be set via `ARM_CLIENT_ID` environment variable.
    storage_account_name = "aksado1"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "aksado1"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "5b810eac-4419-4b63-bec3-e76a59097aef"
}