variable "storage_account_gen2_variables" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    account_kind             = string
    is_hns_enabled           = string
  }))
  default = {}
}