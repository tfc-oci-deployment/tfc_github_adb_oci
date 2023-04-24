variable "tenancy_ocid" {}

variable "user_ocid" {}

variable "private_key" {}

variable "compartment_ocid" {}

variable "region" {}

variable "fingerprint" {}

variable "admin_password" {}

variable "freeform_tags" {
  type    = map
  default = {}
}

variable "defined_tags" {
  type    = map
  default = {}
}

variable "tag_namespace_name" {
  type    = string
  default = ""
}

variable "identity_tag_name" {
  type    = string
  default = ""
}

