
#terraform {
#  backend "azurerm" {
#    resource_group_name   = "terraform_backend_res_grp"
#    storage_account_name  = "terra1demostorage"
#    container_name        = "tfstate"
#    key                   = "terraform_dev.tfstate"
#  }
#}
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "HCA-Ops"

    workspaces {
      name = "ADF-CICD_Demo"
    }
  }
}
provider "azurerm" {
#  version = "~>2.46.0"
  skip_provider_registration = "true"
  features {}
}

