#----nacl/variables.tf----

# Declaring VPC variable Where NACL needs to be provisioned
variable "vpc_id" {}

# Declaring subnet variable which needs to be attached to the NACL
variable "subnet_id_list" {
    type = "list"
}

# Declaring NACL Configuration input parameter variables 
variable "ingress_ip1" {}
variable "ingress_ip2" {}
variable "egress_ip1" {}
variable "ingress_protocol1" {}
variable "ingress_protocol2" {}
variable "ingress_port1" {}
variable "ingress_port2" {}
variable "egress_port1" {}
variable "egress_protocol1" {}
variable "ingress_action1" {}
variable "ingress_action2" {}
variable "egress_action1" {}
variable "ingress_rule1" {}
variable "ingress_rule2" {}
variable "egress_rule1" {}

# Declaring NACL Tagging requirement variables
    ## Mandatory Tags
variable "resource_name" {}    
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

