variable "linked_service_variables" {
  type = map(object({
    data_factory_name   = string
    resource_group_name = string
    name                = string
    connection_string   = string
  }))
  default = {}
}