variable "resource_group_name" {
  type        = string
  description = "Resource Group name to deploy to"
}

variable "location" {
  type        = string
  description = "Location to deploy to"
}

variable "public_ip_prefixes" {
  type = list(object(
    {
      name          = string
      ip_version    = optional(string, "IPv4")
      prefix_length = number
    }
  ))
  default     = []
  description = "Public IP prefixes to deploy"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply"
}
