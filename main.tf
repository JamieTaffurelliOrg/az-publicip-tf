resource "azurerm_public_ip_prefix" "prefix" {
  for_each            = { for k in var.public_ip_prefixes : k.name => k }
  name                = each.key
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
  ip_version          = each.value.ip_version
  prefix_length       = each.value.prefix_length
  zones               = [1, 2, 3]
  tags                = var.tags
}
