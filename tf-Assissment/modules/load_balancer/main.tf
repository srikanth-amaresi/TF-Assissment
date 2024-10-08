#resource "azurerm_public_ip" "public_ip" {
#  name                = "${var.load_balancer_name}-publicip"
#  location            = var.location
#  resource_group_name = var.resource_group_name
#  allocation_method   = "Static"
#}
#
#resource "azurerm_lb" "lb" {
#  name                = var.load_balancer_name
#  location            = var.location
#  resource_group_name = var.resource_group_name
#
#  frontend_ip_configuration {
#    name                 = "${var.load_balancer_name}-frontend"
#    public_ip_address_id = azurerm_public_ip.public_ip.id
#  }
#}
#
#resource "azurerm_lb_backend_address_pool" "backend" {
#  name                = var.backend_pool_name
#  loadbalancer_id     = azurerm_lb.lb.id
#}
#
#resource "azurerm_lb_nat_rule" "nat_rule_http" {
#  name                            = "HTTPNATRule"
#  resource_group_name             = var.resource_group_name
#  loadbalancer_id                 = azurerm_lb.lb.id
#  protocol                        = "Tcp"
#  frontend_port                   = 80
#  backend_port                    = 80
#  frontend_ip_configuration_name  = "${var.load_balancer_name}-frontend"
#  backend_address_pool_id         = azurerm_lb_backend_address_pool.backend.id
#}
#
#resource "azurerm_lb_nat_rule" "nat_rule_https" {
#  name                            = "HTTPSNATRule"
#  resource_group_name             = var.resource_group_name
#  loadbalancer_id                 = azurerm_lb.lb.id
#  protocol                        = "Tcp"
#  frontend_port                   = 443
#  backend_port                    = 443
#  frontend_ip_configuration_name  = "${var.load_balancer_name}-frontend"
#  backend_address_pool_id         = azurerm_lb_backend_address_pool.backend.id
#}
#
#resource "azurerm_network_interface_backend_address_pool_association" "nic_lb" {
#  count                           = length(var.vm_ids)
#  network_interface_id            = var.vm_ids[count.index]
#  ip_configuration_name           = "internal"
#  backend_address_pool_id         = azurerm_lb_backend_address_pool.backend.id
#}
#