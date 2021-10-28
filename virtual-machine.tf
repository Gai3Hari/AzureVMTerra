
resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.virtualMachineName
  resource_group_name = azurerm_resource_group.myTerraformGroup.name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.myTerraformNic.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = tls_private_key.ssh-key.public_key_openssh
  }
   os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

computer_name = var.virtualMachineName
disable_password_authentication = true
}
