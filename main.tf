provider "azuread" {
  tenant_id = var.tenant_id
}

# Create App Registration
resource "azuread_application" "my_app" {
  display_name     = var.app_name
  sign_in_audience = "AzureADMyOrg"
}

# Create Service Principal
resource "azuread_service_principal" "my_app_sp" {
  client_id = azuread_application.my_app.client_id
}

# Create User
resource "azuread_user" "new_user" {
  user_principal_name   = var.user_name
  display_name          = "User New"
  password              = var.user_password
  force_password_change = true
}

# Create Group using Module
module "app_group" {
  source          = "./modules/groups"
  group_name      = var.group_name
  user_object_id  = azuread_user.new_user.object_id
}
