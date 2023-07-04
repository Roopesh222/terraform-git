variable "databricks_workspace_variables" {
  type = map(object({
    name                        = string
    location                    = string
    resource_group_name         = string
    sku                         = string
    managed_resource_group_name = string
  }))
  default = {}
}