

module "rg_module" {
  source              = "github.com/vinaymanikyam/iac_terraform_modules.git/resource_group"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

module "eventhub_namespace_module" {
  source                  = "github.com/vinaymanikyam/iac_terraform_modules.git/eventhub_namespace"
  eventhub_namespace_name = var.eventhub_namespace_name
  location                = var.location
  resource_group_name     = module.rg_module.az_resource_group_name
  eventhub_capacity       = var.eventhub_capacity
  tags                    = var.tags
  eventhub_zone_redundant = var.eventhub_zone_redundant
  auto_inflate_enabled    = var.auto_inflate_enabled
  whitelist_ips           = var.whitelist_ips
  eventhub_sku            = var.eventhub_sku
}

module "storage_account" {
  source               = "github.com/vinaymanikyam/iac_terraform_modules.git/storage_account"
  storage_account_name = var.storage_account_name
  resource_group_name  = module.rg_module.az_resource_group_name
  location             = var.location
  storage_account_tier = var.storage_account_tier
  storage_account_type = var.storage_account_type
  tags                 = var.tags
}

module "eventhub_module" {
  source                               = "github.com/vinaymanikyam/iac_terraform_modules.git/eventhub"
  eventhub_name                        = var.eventhub_name
  eventhub_namespace_name              = module.eventhub_namespace_module.az_eventhub_namespace_name
  location                             = var.location
  resource_group_name                  = module.rg_module.az_resource_group_name
  eventhub_message_retention           = var.eventhub_message_retention
  eventhub_partition_count             = var.eventhub_partition_count
  tags                                 = var.tags
  create_custom_eventhub_group         = var.create_custom_eventhub_group
  create_eventhub_authorization_rule   = var.create_eventhub_authorization_rule
  eventhub_authorization_rule_name     = var.eventhub_authorization_rule_name
  eventhub_consumer_group              = var.eventhub_consumer_group
  eventhub_authorization_rule_manage   = var.eventhub_authorization_rule_manage
  eventhub_authorization_rule_listen   = var.eventhub_authorization_rule_listen
  eventhub_authorization_rule_send     = var.eventhub_authorization_rule_send
  eventhub_capture_interval_in_seconds = var.eventhub_capture_interval_in_seconds
  eventhub_capture_archive_name_format = var.eventhub_capture_archive_name_format
  eventhub_capture_encoding_type       = var.eventhub_capture_encoding_type
  eventhub_capture_destination_name    = var.eventhub_capture_destination_name
  eventhub_capture_skip_empty_archives = var.eventhub_capture_skip_empty_archives
  eventhub_capture_enabled             = var.eventhub_capture_enabled
  storage_account_name                 = module.storage_account.az_storage_account_name
  storage_account_id                   = module.storage_account.az_storage_account_id
  storage_container_name               = var.storage_container_name
  storage_container_access_type        = var.storage_container_access_type



}


module "storage_account1" {
  source               = "github.com/vinaymanikyam/iac_terraform_modules.git/storage_account"
  storage_account_name = var.storage_account_name
  resource_group_name  = module.rg_module.az_resource_group_name
  location             = var.location
  storage_account_tier = var.storage_account_tier
  storage_account_type = var.storage_account_type
  tags                 = var.tags
}





