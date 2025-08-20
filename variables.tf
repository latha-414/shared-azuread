variable "tenant_id" {
  description = "Azure AD Tenant ID"
  type        = string
}

variable "app_name" {
  description = "Name of the App Registration"
  type        = string
}

variable "user_name" {
  description = "UPN of the new user"
  type        = string
}

variable "user_password" {
  description = "Password for the new user"
  type        = string
  sensitive   = true
}

variable "group_name" {
  description = "Name of the group"
  type        = string
}
