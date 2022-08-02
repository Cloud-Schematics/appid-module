##############################################################################
# Account Variables
##############################################################################

variable "region" {
  description = "The region to which to deploy the VPC"
  type        = string
}

variable "prefix" {
  description = "The prefix that you would like to prepend to your resources"
  type        = string
}

variable "tags" {
  description = "List of Tags for the resource created"
  type        = list(string)
  default     = null
}

variable "resource_group_id" {
  description = "Resource group ID for App ID instance"
  type        = string
  default     = null
}

##############################################################################

##############################################################################
# App ID Variables
##############################################################################

variable "use_data" {
  description = "Get App ID information from data."
  type        = bool
  default     = false
}

variable "appid_name" {
  description = "App ID name. Use only if `use_data` is true."
  type        = string
  default     = null
}

##############################################################################