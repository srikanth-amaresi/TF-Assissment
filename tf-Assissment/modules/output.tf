output "load_balancer_id" {
  description = "The ID of the Load Balancer"
  value       = module.load_balancer.load_balancer_id
}

output "frontend_ip_configuration_id" {
  description = "The ID of the frontend IP configuration"
  value       = module.load_balancer.frontend_ip_configuration_id
}
