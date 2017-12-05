variable "auth_token" {
  description = "Your packet API key"
}

variable "packet_project_id" {
  description = "Packet Project ID"
}

variable "packet_facility" {
  description = "Packet facility: US East(ewr1), US West(sjc1), or EU(ams1). Default: sjc1"
  default = "ams1"
}

variable "packet_agent_type" {
  description = "Instance type of Agent"
  default = "baremetal_0"
}
