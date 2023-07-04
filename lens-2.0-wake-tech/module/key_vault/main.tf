
resource "azurerm_key_vault" "key_vault" {
  for_each            = var.key_vault_variables
  name                = each.value["name"]
  location            = each.value["location"]
  resource_group_name = each.value["resource_group_name"]
  tenant_id           = each.value["tenant_id"]
  sku_name            = each.value["sku_name"]

  access_policy {
    tenant_id = "6c637512-c417-4e78-9d62-b61258e4b619"
    object_id = "a393b665-1997-4ecc-baf8-49cedf7ef669"

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}