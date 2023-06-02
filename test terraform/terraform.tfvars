resource_group_variables = {
  "rg01" = {
    location = "eastus"
    name     = "roopesh_rg_primary"
  }
  "rg02" = {
    location = "westus"
    name     = "roopesh_rg_secondary"
  }
}

#############vnet#############

virtual_network_variables = {
  "my-vnet01" = {
    address_space       = ["10.6.0.0/16"]
    location            = "eastus"
    name                = "HUB_eus_vnet"
    resource_group_name = "roopesh_rg_primary"
  }
  "my-vnet02" = {
    address_space       = ["10.7.0.0/16"]
    location            = "eastus"
    name                = "SPOKE_eus_vnet"
    resource_group_name = "roopesh_rg_primary"
  }
  "my-vnet03" = {
    address_space       = ["10.8.0.0/16"]
    location            = "westus"
    name                = "HUB_wus_vnet"
    resource_group_name = "roopesh_rg_secondary"
  }
  "my-vnet04" = {
    address_space       = ["10.9.0.0/16"]
    location            = "westus"
    name                = "SPOKE_wus_vnet"
    resource_group_name = "roopesh_rg_secondary"
  }
}
################## subnet ###################

subnet_variables = {
  "subnet01" = {
    address_prefixes     = ["10.6.1.0/24"]
    name                 = "subnet01"
    resource_group_name  = "roopesh_rg_primary"
    virtual_network_name = "HUB_eus_vnet"
  }
  "subnet02" = {
    address_prefixes     = ["10.6.2.0/24"]
    name                 = "subnet02"
    resource_group_name  = "roopesh_rg_primary"
    virtual_network_name = "HUB_eus_vnet"
  }
  "subnet03" = {
    address_prefixes     = ["10.6.3.0/24"]
    name                 = "subnet03"
    resource_group_name  = "roopesh_rg_primary"
    virtual_network_name = "HUB_eus_vnet"
  }

  "subnet04" = {
    address_prefixes     = ["10.7.1.0/24"]
    name                 = "AD_subnet"
    resource_group_name  = "roopesh_rg_primary"
    virtual_network_name = "SPOKE_eus_vnet"
  }
  "subnet05" = {
    address_prefixes     = ["10.7.2.0/24"]
    name                 = "WEB_subnet"
    resource_group_name  = "roopesh_rg_primary"
    virtual_network_name = "SPOKE_eus_vnet"
  }
  "subnet06" = {
    address_prefixes     = ["10.7.3.0/24"]
    name                 = "SQL_subnet"
    resource_group_name  = "roopesh_rg_primary"
    virtual_network_name = "SPOKE_eus_vnet"
  }



  "subnet07" = {
    address_prefixes     = ["10.8.1.0/24"]
    name                 = "subnet01"
    resource_group_name  = "roopesh_rg_secondary"
    virtual_network_name = "HUB_wus_vnet"
  }
  "subnet08" = {
    address_prefixes     = ["10.8.2.0/24"]
    name                 = "subnet02"
    resource_group_name  = "roopesh_rg_secondary"
    virtual_network_name = "HUB_wus_vnet"
  }
  "subnet09" = {
    address_prefixes     = ["10.8.3.0/24"]
    name                 = "subnet03"
    resource_group_name  = "roopesh_rg_secondary"
    virtual_network_name = "HUB_wus_vnet"
  }


  "subnet10" = {
    address_prefixes     = ["10.9.1.0/24"]
    name                 = "AD_subnet"
    resource_group_name  = "roopesh_rg_secondary"
    virtual_network_name = "SPOKE_wus_vnet"
  }
  "subnet11" = {
    address_prefixes     = ["10.9.2.0/24"]
    name                 = "WEB_subnet"
    resource_group_name  = "roopesh_rg_secondary"
    virtual_network_name = "SPOKE_wus_vnet"
  }
  "subnet12" = {
    address_prefixes     = ["10.9.3.0/24"]
    name                 = "SQL_subnet"
    resource_group_name  = "roopesh_rg_secondary"
    virtual_network_name = "SPOKE_wus_vnet"
  }
}

############ nic ###############

network_interface_variables = {
  "nic01" = {
    location             = "eastus"
    name_ip              = "nic01_ip"
    name_nic             = "vm_nic01"
    name_subnet          = "AD_subnet"
    resource_group_name  = "roopesh_rg_primary"
    virtual_network_name = "SPOKE_eus_vnet"
    public_ip_name        = "pip01"
    resource_group_name_ip = "roopesh_rg_primary"
  }
  "nic02" = {
    location             = "eastus"
    name_ip              = "nic02_ip"
    name_nic             = "vm_nic02"
    name_subnet          = "WEB_subnet"
    resource_group_name  = "roopesh_rg_primary"
    virtual_network_name = "SPOKE_eus_vnet"
    public_ip_name        = "pip02"
    resource_group_name_ip="roopesh_rg_primary"
  }
  "nic03" = {
    location             = "eastus"
    name_ip              = "nic03_ip"
    name_nic             = "vm_nic03"
    name_subnet          = "WEB_subnet"
    resource_group_name  = "roopesh_rg_primary"
    virtual_network_name = "SPOKE_eus_vnet"
    public_ip_name        = "pip03"
    resource_group_name_ip="roopesh_rg_primary"
  }
  "nic04" = {
    location             = "eastus"
    name_ip              = "nic04_ip"
    name_nic             = "vm_nic04"
    name_subnet          = "SQL_subnet"
    resource_group_name  = "roopesh_rg_primary"
    virtual_network_name = "SPOKE_eus_vnet"
     public_ip_name        = "pip04"
    resource_group_name_ip="roopesh_rg_primary"
  }
  "nic05" = {
    location             = "eastus"
    name_ip              = "nic05_ip"
    name_nic             = "vm_nic05"
    name_subnet          = "SQL_subnet"
    resource_group_name  = "roopesh_rg_primary"
    virtual_network_name = "SPOKE_eus_vnet"
     public_ip_name        = "pip05"
    resource_group_name_ip="roopesh_rg_primary"
  }
}

############### VM #################

virtual_machine_variables = {
  "vm01" = {
    admin_password = "Roopesh@#123"
    admin_username = "Roopesh"
    caching = "ReadWrite"
    computer_name="vmone"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "vm_nic01"
    name_os_disk = "myosdisk1"
    name_vm = "AD_VM"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "roopesh_rg_primary"
    resource_group_name_nic="roopesh_rg_primary"
    sku = "2019-Datacenter"
    version = "latest"
    vm_size = "Standard_E2s_v3"
  }

  "vm02" = {
    admin_password = "Roopesh@#123"
    admin_username = "Roopesh"
    caching = "ReadWrite"
    computer_name="vmtwo"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "vm_nic02"
    name_os_disk = "myosdisk2"
    name_vm = "WEB01_vm"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "roopesh_rg_primary"
    resource_group_name_nic="roopesh_rg_primary"
    sku = "2019-Datacenter"
    version = "latest"
    vm_size = "Standard_E2s_v3"
  }

  
  "vm03" = {
    admin_password = "Roopesh@#123"
    admin_username = "Roopesh"
    caching = "ReadWrite"
    computer_name="vmthree"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "vm_nic03"
    name_os_disk = "myosdisk3"
    name_vm = "WEB02_vm"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "roopesh_rg_primary"
    resource_group_name_nic="roopesh_rg_primary"
    sku = "2019-Datacenter"
    version = "latest"
    vm_size = "Standard_E2s_v3"
  }


   "vm04" = {
    admin_password = "Roopesh@#123"
    admin_username = "Roopesh"
    caching = "ReadWrite"
    computer_name="vmfour"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "vm_nic04"
    name_os_disk = "myosdisk4"
    name_vm = "SQL_VM_01"
    offer = "SQL2017-WS2019"
    publisher = "MicrosoftSQLServer"
    resource_group_name = "roopesh_rg_primary"
    resource_group_name_nic="roopesh_rg_primary"
    sku = "SQLDEV"
    version = "latest"
    vm_size = "Standard_E2s_v3"
  }

"vm05" = {
    admin_password = "Roopesh@#123"
    admin_username = "Roopesh"
    caching = "ReadWrite"
    computer_name="vmfive"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "vm_nic05"
    name_os_disk = "myosdisk5"
    name_vm = "SQL_VM_02"
    offer = "SQL2017-WS2019"
    publisher = "MicrosoftSQLServer"
    resource_group_name = "roopesh_rg_primary"
    resource_group_name_nic="roopesh_rg_primary"
    sku = "SQLDEV"
    version = "latest"
    vm_size = "Standard_E2s_v3"
  }
}

################# public ip ###################
 
 public_ip_variables = {
   "pip01" = {
     name="pip01"
     location="eastus"
     resource_group_name="roopesh_rg_primary"
        }

  "pip02" = {
     name="pip02"
     location="eastus"
     resource_group_name="roopesh_rg_primary"
        }

  "pip03" = {
     name="pip03"
     location="eastus"
     resource_group_name="roopesh_rg_primary"
        }

  "pip04" = {
     name="pip04"
     location="eastus"
     resource_group_name="roopesh_rg_primary"
        }
  "pip05" = {
     name="pip05"
     location="eastus"
     resource_group_name="roopesh_rg_primary"
        }
 }

