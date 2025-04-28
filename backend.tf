terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestorageacct2"
    container_name       = "tfstate"
    key                  = "vmss.tfstate"

-   use_msi          = true
-   use_azuread_auth = true
+   use_cli          = true    # ← use the Azure CLI login context :contentReference[oaicite:1]{index=1}
+   use_azuread_auth = true
  }
}
 
 
