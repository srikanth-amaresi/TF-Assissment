output "vm_ids" {
  value = azurerm_virtual_machine.vm.*.id   #this based on how you create your VMs
}
