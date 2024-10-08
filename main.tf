provider "azurerm" {
 subscription_id = "-------05f5-4f99-afb6-24fac93815c1"
  tenant_id = "a4e35b9c-b7c3--------a2f5-0b3ad383e5f7"
  client_id = "d7f42c75-2619-----------8dee-42d1028d7971"
  client_secret = "wdu8Q~-----------~hTS1GlF6~KOWcDyda-"
  features {}   
}


module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_name         = var.subnet_name
  subnet_address_space = var.subnet_prefixes
}

module "vm" {
  source              = "./modules/vm"
  vm_name             = var.vm_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = module.vnet.subnet_id
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  nic_name            = "my-vm-nic"
}

module "nsg" {
  source              = "./modules/nsg"
  nsg_name            = "my-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name
  nic_id              = module.vm.nic_id
  perficient_ip_range = "203.0.113.0/24"
}

#module "load_balancer" {         
#  source              = "./modules/load_balancer"
#  load_balancer_name  = var.load_balancer_name
#  backend_pool_name   = var.backend_pool_name
#  resource_group_name = var.resource_group_name
#  location            = var.location
#  vm_ids              = module.vm.vm_ids 
#}
