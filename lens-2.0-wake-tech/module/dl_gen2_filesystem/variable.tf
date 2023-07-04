variable "data_lake_gen2_filesystem_variables" {
  type = map(object({
    storage_account_gen2_name = string
    resource_group_name       = string
    filesystem_name           = string
  }))
  default = {}
}