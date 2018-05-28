variable "resource_group_name" {
  type        = "string"
  description = "Name of the azure resource group."
  default     = "tfbc-ex03-rg"
}

variable "resource_group_location" {
  type        = "string"
  description = "Location of the azure resource group."
  default     = "westus"
}

variable "dns_name_label_prefix" {
  type        = "string"
  description = "Your DNS Name Label Prefix (must be unique in region)."
  default     = "your-label"
}
