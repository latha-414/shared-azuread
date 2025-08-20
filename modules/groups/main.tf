resource "azuread_group" "new_group" {
  display_name     = var.group_name
  security_enabled = true
  mail_enabled     = false
}

resource "azuread_group_member" "add_user_to_group" {
  group_object_id  = azuread_group.new_group.object_id
  member_object_id = var.user_object_id
}
