variable "resource-group-dev" {
  description = "azurerm resource groups"
  default     = "terraform_backend_res_grp"
}

variable "resource-location" {
  description = "The location to deploy instances in"
  default     = "East US 2"
}
