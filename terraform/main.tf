provider "azurerm" {
  version = "~> 2.0.0"
  features {}
}


resource "azurerm_resource_group" "example" {
  name     = "resourceGroup2"
  location = "Japan East"
}

resource "azurerm_eventhub_namespace" "secondnw_namespace" {
  name                = "secondnw-dev01-je-2nd-001"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"
  capacity            = 1

  tags = {
    environment = "疏通测试环境"
  }
}

resource "azurerm_eventhub" "secondnw_topic1" {
  name                = "secondnw-deliverycompleted-consumer"
  namespace_name      = azurerm_eventhub_namespace.secondnw_namespace.name
  resource_group_name = azurerm_resource_group.secondnw_namespace.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "secondnw_topic2" {
  name                = "secondnw-deliverycompleted-consumer2"
  namespace_name      = azurerm_eventhub_namespace.secondnw_namespace.name
  resource_group_name = azurerm_resource_group.secondnw_namespace.name
  partition_count     = 2
  message_retention   = 1
}
