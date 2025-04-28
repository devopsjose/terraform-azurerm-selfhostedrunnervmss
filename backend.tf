terraform {
  backend "azurerm" {
    resource_group_name  = "vmss-test-rg"
    storage_account_name = "tfstatestorageacct2"
    container_name       = "tfstate"
    key                  = "vmss.tfstate"
    use_msi              = true
    use_azuread_auth     = true
  }
}
 
