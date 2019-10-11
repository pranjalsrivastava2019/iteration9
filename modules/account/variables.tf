#----account/variables.tf----

# Declaring Account config variable
variable "account_name" {}
variable "account_email" {}


# Declaring NACL Tagging requirement variables
    ## Mandatory Tags
variable "org_unit" {}
variable "app_id" {}
variable "app_functionality" {}
variable "env" {}
variable "project_name" {}
variable "build_version" {}

    ## Optional Tags
variable "app_lifecycle" {}
variable "cost_center" {}
variable "sys_owner" {}
variable "app_with_pii" {}
variable "app_with_pci" {}
variable "data_class_tier" {}

