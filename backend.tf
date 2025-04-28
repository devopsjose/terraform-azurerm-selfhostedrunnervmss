terraform {
   backend "azurerm" {
     resource_group_name  = "tfstate-rg"
     storage_account_name = "tfstatestorageacct2"
     container_name       = "tfstate"
     key                  = "vmss.tfstate"
-    # remove this line:
-    use_msi              = true
-    # remove this line:
-    use_azuread_auth     = true
 
+    # tell Terraform backend to use your Azure CLI / AzureAD login
+    use_azuread_auth     = true    # ← valid backend flag :contentReference[oaicite:0]{index=0}
   }
}
 
 
