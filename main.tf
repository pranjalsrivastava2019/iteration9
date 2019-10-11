#----root/main.tf-----
provider "aws" {
  region = "us-east-2"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

# Deploy NACL Resources
module "network_acl" {
  source            = "./modules/nacl"
  vpc_id            = "vpc-444a522c"
  subnet_id_list    = [
                      "subnet-0f493775",
                      "subnet-4c399f00"
                      ]
  # Input parameters for NACL configuration
  ingress_ip1       = "0.0.0.0/0"
  ingress_ip2       = "0.0.0.0/0"
  egress_ip1        = "0.0.0.0/0"
  ingress_protocol1 = "tcp"
  ingress_protocol2 = "tcp"
  ingress_port1     = "22"
  ingress_port2     = "80"
  egress_port1      = "0"
  egress_protocol1  = "-1"
  ingress_action1   = "allow"
  ingress_action2   = "allow"
  egress_action1    = "allow"
  ingress_rule1     = "100"
  ingress_rule2     = "200"
  egress_rule1      = "100"

# Input parameters for Tagging
  	## Mandatory Tags
  resource_name     = "fi-mktg-1234-confluence-nacl"  
  org_unit          = "Marketing"
  app_id            = "ABCF-1234"
  app_functionality = "Web"
  env               = "development"
  project_name      = "digitalization"
  build_version     = "sample"

	  ## Optional Tags
  app_lifecycle     = "invest"
  cost_center       = "12345678"
  sys_owner         = "mgr-name"
  app_with_pii      = "N"
  app_with_pci      = "N"
  data_class_tier   = "confidential"


}


module "account" {
  source       = "./modules/account"

# Input parameters for Account configuration
account_name      = "fi-mktg-dev"
account_email     = "abc@sample.com"

# Input parameters for Tagging
	## Mandatory Tags
org_unit          = "Marketing"
app_id            = "ABCF-1234"
app_functionality = "Web"
env               = "development"
project_name      = "digitalization"
build_version     = "sample"

	## Optional Tags
app_lifecycle     = "invest"
cost_center       = "12345678"
sys_owner         = "mgr-name"
app_with_pii      = "N"
app_with_pci      = "N"
data_class_tier   = "confidential"

}
