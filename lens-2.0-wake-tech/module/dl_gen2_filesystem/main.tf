data "azurerm_storage_account" "storage_account_gen2" {
  for_each            = var.data_lake_gen2_filesystem_variables
  name                = each.value["storage_account_gen2_name"]
  resource_group_name = each.value["resource_group_name"]
}

resource "azurerm_storage_data_lake_gen2_filesystem" "data_lake_gen2_filesystem" {
  for_each           = var.data_lake_gen2_filesystem_variables
  name               = each.value["filesystem_name"]
  storage_account_id = data.azurerm_storage_account.storage_account_gen2[each.key].id
}