resource "azurerm_databricks_workspace" "databricks_workspace" {
  for_each = var.databricks_workspace_variables

  name                        = each.value["name"]
  location                    = each.value["location"]
  resource_group_name         = each.value["resource_group_name"]
  sku                         = each.value["sku"]
  managed_resource_group_name = each.value["managed_resource_group_name"]
}
