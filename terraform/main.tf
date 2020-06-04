provider "azurerm" {
  version = "~> 2.0.0"
  features {}
}


resource "azurerm_resource_group" "resourceGroup2" {
  name     = "resourceGroup2"
  location = "Japan East"
}

resource "azurerm_eventhub_namespace" "secondnw_namespace" {
  name                = "secondnw-dev01-je-2nd-001"
  location            = azurerm_resource_group.resourceGroup2.location
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  sku                 = "Standard"
  capacity            = 1

  tags = {
    environment = "疏通测试环境"
  }
}


resource "azurerm_eventhub_namespace" "ecif_namespace" {
  name                = "ecif-dev01-je-2nd-001"
  location            = azurerm_resource_group.resourceGroup2.location
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  sku                 = "Standard"
  capacity            = 1

  tags = {
    environment = "疏通测试环境"
  }
}


resource "azurerm_eventhub_namespace" "core_namespace" {
  name                = "core-dev01-je-2nd-001"
  location            = azurerm_resource_group.resourceGroup2.location
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  sku                 = "Standard"
  capacity            = 1

  tags = {
    environment = "疏通测试环境"
  }
}

resource "azurerm_eventhub" "secondnw_topic1" {
  name                = "secondnw_topic1"
  namespace_name      = azurerm_eventhub_namespace.secondnw_namespace.name
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "secondnw_topic2" {
  name                = "secondnw_topic2"
  namespace_name      = azurerm_eventhub_namespace.secondnw_namespace.name
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "secondnw_topic3" {
  name                = "secondnw_topic3"
  namespace_name      = azurerm_eventhub_namespace.secondnw_namespace.name
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  partition_count     = 2
  message_retention   = 1
}


resource "azurerm_eventhub" "ecif_topic1" {
  name                = "ecif_topic1"
  namespace_name      = azurerm_eventhub_namespace.ecif_namespace.name
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "ecif_topic2" {
  name                = "ecif_topic2"
  namespace_name      = azurerm_eventhub_namespace.ecif_namespace.name
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "ecif_topic3" {
  name                = "ecif_topic3"
  namespace_name      = azurerm_eventhub_namespace.ecif_namespace.name
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "core_topic1" {
  name                = "core_topic1"
  namespace_name      = azurerm_eventhub_namespace.core_namespace.name
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "core_topic2" {
  name                = "core_topic2"
  namespace_name      = azurerm_eventhub_namespace.core_namespace.name
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "core_topic3" {
  name                = "core_topic3"
  namespace_name      = azurerm_eventhub_namespace.core_namespace.name
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  partition_count     = 2
  message_retention   = 1
}


resource "azurerm_eventhub" "core_topic4" {
  name                = "core_topic4"
  namespace_name      = azurerm_eventhub_namespace.core_namespace.name
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "core_topic5" {
  name                = "core_topic4"
  namespace_name      = azurerm_eventhub_namespace.core_namespace.name
  resource_group_name = azurerm_resource_group.resourceGroup2.name
  partition_count     = 2
  message_retention   = 1
}
