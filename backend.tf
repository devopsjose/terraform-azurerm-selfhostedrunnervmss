terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate-rg"
    storage_account_name  = "tfstatestorageacct2"
    container_name        = "tfstate"
    key                   = "vmss.tfstate"
    use_msi               = true
  }
}
 
 
 
 
