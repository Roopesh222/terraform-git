data "azurerm_data_factory" "data_factory" {
  for_each            = var.linked_service_variables
  name                = each.value["data_factory_name"]
  resource_group_name = each.value["resource_group_name"]
}
resource "azurerm_data_factory_linked_service_azure_blob_storage" "linked_service" {
  for_each          = var.linked_service_variables
  name              = each.value["name"]
  data_factory_id   = data.azurerm_data_factory.data_factory[each.key].id
  connection_string = each.value["connection_string"]
}