resource "azurerm_storage_account" "storage_account_gen2" {
  for_each                 = var.storage_account_gen2_variables
  name                     = each.value["name"]
  resource_group_name      = each.value["resource_group_name"]
  location                 = each.value["location"]
  account_tier             = each.value["account_tier"]
  account_replication_type = each.value["account_replication_type"]
  account_kind             = each.value["account_kind"]
  is_hns_enabled           = each.value["is_hns_enabled"]
}

/* resource "azurerm_storage_data_lake_gen2_filesystem" "example" {
  name               = each.value["filesystem_name"]
  storage_account_id = azurerm_storage_account.example.id
} */    