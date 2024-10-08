variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "The address space that is used by the virtual network"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy the resources"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "subnet_name" {
  description = "The name of the Subnet"
  type        = string
}

variable "subnet_prefixes" {
  description = "The subnet address prefix"
  type        = string
}

variable "vm_name" {
  description = "The name of the Virtual Machine"
  type        = string
}

variable "vm_size" {
  description = "The size of the Virtual Machine"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the VM"
  type        = string
  sensitive   = true
}

variable "load_balancer_name" {
  description = "The name of the Load Balancer"
  type        = string
}

variable "frontend_ip_name" {
  description = "The name of the frontend IP configuration"
  type        = string
}

variable "backend_pool_name" {
  description = "The name of the backend address pool"
  type        = string
}

variable "public_ip_name" {
  description = "The name of the public IP resource"
  type        = string
}
