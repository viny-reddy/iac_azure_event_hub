variable "resource_group_name" {
  description = "value"
}

variable "location" {
}

variable "eventhub_namespace_name" {

}

variable "eventhub_name" {}


variable "eventhub_sku" {
  default = "Standard"
}

variable "eventhub_capacity" {
  default = 1
}
variable "eventhub_message_retention" {
  default = 1
}

variable "eventhub_partition_count" {
  default = 2
}

variable "tags" {
  type = map(any)
}

variable "eventhub_zone_redundant" {
  default = true
}


variable "auto_inflate_enabled" {


}

variable "eventhub_consumer_group" {

}

variable "create_custom_eventhub_group" {}

variable "create_eventhub_authorization_rule" {

}

variable "eventhub_authorization_rule_name" {}

variable "eventhub_authorization_rule_listen" {
  description = "Grants listen access to Authorization Rule of the Event Hub namespace"
  type        = bool
  default     = true
}

variable "eventhub_authorization_rule_send" {
  description = "Grants send access to Authorization Rule of the Event Hub namespace"
  type        = bool
  default     = true
}

variable "eventhub_authorization_rule_manage" {
  description = "Grants manage access to Authorization Rule of the Event Hub namespace"
  type        = bool
  default     = true
}

variable "whitelist_ips" {
  type = list(string)
}

variable "eventhub_capture_interval_in_seconds" {

}

variable "eventhub_capture_encoding_type" {
  type = string
}


variable "eventhub_capture_archive_name_format" {

}

variable "eventhub_capture_enabled" {

}

variable "eventhub_capture_skip_empty_archives" {

}


variable "eventhub_capture_destination_name" {

}

variable "storage_account_name" {

}

variable "storage_account_tier" {

}

variable "storage_account_type" {

}

variable "storage_container_name" {

}

variable "storage_container_access_type" {

}








