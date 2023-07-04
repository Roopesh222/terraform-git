#################### RG ############################
variable "resource_group_variable" {
  type = map(object({
    name     = string
    location = string
  }))
  default = {}
}

################# storage account ##################

variable "storage_account_variables" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
  default = {}
}

################# key vault ########################

variable "key_vault_variables" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku_name            = string
    tenant_id           = string
  }))
  default = {}
}

################ data bricks #######################

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

################ ADLS Gen2 storage account ##########

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

############### data_lake_gen2_filesystem ###########

variable "data_lake_gen2_filesystem_variables" {
  type = map(object({
    storage_account_gen2_name = string
    resource_group_name       = string
    filesystem_name           = string
  }))
  default = {}
}

#################### data factory #####################

variable "data_factory_variables" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
  default = {}
}

################### linked service ####################

variable "linked_service_variables" {
  type = map(object({
    data_factory_name   = string
    resource_group_name = string
    name                = string
    connection_string   = string
  }))
  default = {}
}