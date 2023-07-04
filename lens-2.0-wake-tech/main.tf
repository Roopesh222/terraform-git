provider "azurerm" {
  features {}
}

######################### RG #######################
module "rg_module" {
  source                  = "./module/rg"
  resource_group_variable = var.resource_group_variable
}

#################### storage account ###############

module "st_module" {
  source                    = "./module/storage_account"
  storage_account_variables = var.storage_account_variables
  depends_on                = [module.rg_module]
}

################# key vault ########################

module "kv_module" {
  source              = "./module/key_vault"
  key_vault_variables = var.key_vault_variables
  depends_on          = [module.rg_module]
}

################# data bricks ######################

module "db_module" {
  source                         = "./module/data_bricks"
  databricks_workspace_variables = var.databricks_workspace_variables
  depends_on                     = [module.rg_module]
}

################ ADLS Gen2 storage account ##########

module "sttg_gen2_module" {
  source                         = "./module/adls_gen2_st"
  storage_account_gen2_variables = var.storage_account_gen2_variables
  depends_on                     = [module.rg_module]
}

############### data_lake_gen2_filesystem ###########

module "filesystem_gen2_module" {
  source                              = "./module/dl_gen2_filesystem"
  data_lake_gen2_filesystem_variables = var.data_lake_gen2_filesystem_variables
  depends_on                          = [module.sttg_gen2_module, module.rg_module]
}

################### data factory #####################

module "data_factory_module" {
  source                 = "./module/data_factory"
  data_factory_variables = var.data_factory_variables
  depends_on             = [module.rg_module]
}

################### linked service #######################

module "linked_service_module" {
  source                   = "./module/linked_services"
  linked_service_variables = var.linked_service_variables
  depends_on               = [module.data_factory_module, module.rg_module]
}