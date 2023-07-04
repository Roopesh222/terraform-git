resource_group_variable = {
  "rg01" = {
    location = "eastus"
    name     = "rg-lens-wake-tech"
  }
}

################# storage account ##################

storage_account_variables = {
  "st01" = {
    name                     = "lenstorage001"
    resource_group_name      = "rg-lens-wake-tech"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

################# key vault ########################

key_vault_variables = {
  "kv01" = {
    name                = "lensvault"
    location            = "eastus"
    resource_group_name = "rg-lens-wake-tech"
    sku_name            = "standard"
    tenant_id           = "6c637512-c417-4e78-9d62-b61258e4b619"
  }
}

################ data bricks #######################

databricks_workspace_variables = {
  "db01" = {
    name                        = "lens_databricks"
    location                    = "eastus"
    resource_group_name         = "rg-lens-wake-tech"
    sku                         = "trial"
    managed_resource_group_name = "lens_managed_rg"
  }
}

################ ADLS Gen2 storage account ##########

storage_account_gen2_variables = {
  "stg_gen2" = {
    name                     = "storagelensgen2"
    resource_group_name      = "rg-lens-wake-tech"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    account_kind             = "StorageV2"
    is_hns_enabled           = "true"
  }
}

############### data_lake_gen2_filesystem ###########

data_lake_gen2_filesystem_variables = {
  "filesystem_gen2" = {
    storage_account_gen2_name = "storagelensgen2"
    resource_group_name       = "rg-lens-wake-tech"
    filesystem_name           = "filesystemgen2"
  }
}

#################### data factory #####################

data_factory_variables = {
  "data_factory" = {
    location            = "eastus"
    name                = "lensdatafactory"
    resource_group_name = "rg-lens-wake-tech"
  }
}

################### linked service #####################

linked_service_variables = {
  "linked_service" = {
    data_factory_name   = "lensdatafactory"
    resource_group_name = "rg-lens-wake-tech"
    name                = "linkedservice"
    connection_string   = "DefaultEndpointsProtocol=https;AccountName=lenstorage001;AccountKey=KLvAWEm8oTz3OKOZDwBDLk3UyvNXDvHij7Wy/t0fiy4qSuo+wcwLmiwNm1saMzn+PZiSLvQ8iDL2+ASt3Xq4ww==;EndpointSuffix=core.windows.net"
  }
}