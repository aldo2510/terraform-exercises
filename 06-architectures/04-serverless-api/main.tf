resource "random_string" "suffix" {
  length = 6
  special = false
  upper = false
}

locals {
  storage_account_name = substr("${var.project_name}${random_string.suffix.result}", 0, 24)
  function_app_name = "${var.project_name}-fn-${random_string.suffix.result}"
}

resource "azurerm_resource_group" "this" {
  name = "${var.project_name}-rg"
  location = var.location
}

resource "azurerm_storage_account" "this" {
  name = local.storage_account_name
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  min_tls_version = "TLS1_2"
}

resource "azurerm_service_plan" "this" {
  name = "${var.project_name}-plan"
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  os_type = "Linux"
  sku_name = "Y1"
}

resource "azurerm_linux_function_app" "this" {
  name = local.function_app_name
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  service_plan_id = azurerm_service_plan.this.id
  storage_account_name = azurerm_storage_account.this.name
  storage_account_access_key = azurerm_storage_account.this.primary_access_key
  https_only = true

  site_config {
    application_stack {
      python_version = "3.12"
    }
  }

  app_settings = {
    FUNCTIONS_WORKER_RUNTIME = "python"
  }
}

resource "azurerm_function_app_function" "api" {
  name = "hello"
  function_app_id = azurerm_linux_function_app.this.id
  language = "Python"

  file {
    name = "__init__.py"
    content = <<-PY
import json

def main(req):
    return {
        "status": 200,
        "body": json.dumps({
            "message": "Hola desde Azure Functions",
            "source": "terraform"
        }),
        "headers": {
            "Content-Type": "application/json"
        }
    }
PY
  }

  config_json = jsonencode({
    bindings = [
      {
        authLevel = "anonymous"
        direction = "in"
        methods = ["get"]
        name = "req"
        type = "httpTrigger"
      },
      {
        direction = "out"
        name = "$return"
        type = "http"
      }
    ]
  })
}