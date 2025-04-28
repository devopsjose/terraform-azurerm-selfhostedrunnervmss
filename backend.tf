terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestorageacct2"
    container_name       = "tfstate"
    key                  = "vmss.tfstate"

    # tell the backend to use your Azure CLI / OIDC login token
    use_azuread_auth     = true
  }
}
 
 
 
