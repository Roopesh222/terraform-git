resource "azurerm_data_factory" "data_factory" {
  for_each            = var.data_factory_variables
  name                = each.value["name"]
  location            = each.value["location"]
  resource_group_name = each.value["resource_group_name"]
}