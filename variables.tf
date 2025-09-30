variable "resource_group_name" {
  type        = string
  description = "Resource group name where storage will be created"
}

variable "create_resource_group" {
  type        = bool
  default     = false
  description = "Whether to create the resource group inside this module"
}

variable "location" {
  type        = string
  description = "Azure region for the resources"
}

variable "storage_account_name" {
  type        = string
  description = "Globally unique name for the storage account (3-24 lowercase letters/numbers)"
}

variable "account_tier" {
  type        = string
  default     = "Standard"
  description = "Storage account tier (Standard/Premium)"
}

variable "replication_type" {
  type        = string
  default     = "LRS"
  description = "Replication type (LRS, GRS, RAGRS, ZRS)"
}

variable "allow_blob_public_access" {
  type        = bool
  default     = false
  description = "Allow public access to blob containers"
}

variable "containers" {
  type        = list(string)
  default     = []
  description = "List of blob container names to create"
}

variable "container_access_type" {
  type        = string
  default     = "private"
  description = "Blob container access level (private, blob, container)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to resources"
}
