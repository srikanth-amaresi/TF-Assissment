variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
  default = "CUstum-nsg"
}

variable "location" {
  description = "The location where the resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "nic_id" {
  description = "The Network Interface ID to apply the NSG to"
  type        = string
}

variable "perficient_ip_range" {
  description = "IP range of Perficient's network for SSH access"
  type        = string
}
