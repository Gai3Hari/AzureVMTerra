resource "azurerm_resource_group" "myTerraformGroup"{
    location = var.location
    name = var.resourceGroupName
    tags = var.tags
    }
    
    resource "azurerm_public_ip" "example" {
  name                = var.ipaddress
  resource_group_name = var.resourceGroupName
  location            = var.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
