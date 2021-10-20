resource "azurerm_resource_group" "myTerraformGroup"{
    location = var.location
    name = var.resourceGroupName
    tags = var.tags
    }


  
