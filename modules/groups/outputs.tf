output "group_id" {
  description = "The Object ID of the created group"
  value       = azuread_group.new_group.object_id
}
