variable "domain_name" {
  type        = string
  description = "The name of the domain for which to provision the MTA-STS website for."
}

variable "location" {
  type        = string
  description = "The Azure region where the resources will be deployed."
}

variable "sku" {
  type        = string
  description = "The SKU Name for the static web app."
  default     = "Free"
  validation {
    condition     = contains(["Free", "Standard"], var.sku)
    error_message = "The SKU has to be one of 'Free' or 'Standard'."
  }
}

variable "tags" {
  type        = map(string)
  description = "The default tags for Azure resources."
}
