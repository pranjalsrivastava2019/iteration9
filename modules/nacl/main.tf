#----nacl/main.tf----

resource "aws_network_acl" "nacl" {
  
  vpc_id      = var.vpc_id
  subnet_ids  = var.subnet_id_list

#Ingress Rule 1
    ingress {
    from_port   = var.ingress_port1
    to_port     = var.ingress_port1
    protocol    = var.ingress_protocol1
    cidr_block  = var.ingress_ip1
    action      = var.ingress_action1
    rule_no     = var.ingress_rule1
  }

#Ingress Rule 2
  ingress {
    from_port   = var.ingress_port2
    to_port     = var.ingress_port2
    protocol    = var.ingress_protocol2
    cidr_block  = var.ingress_ip2
    action      = var.ingress_action2
    rule_no     = var.ingress_rule2
  }

#Egress Rule 1
  egress {
    from_port   = var.egress_port1
    to_port     = var.egress_port1
    protocol    = var.egress_protocol1
    cidr_block  = var.egress_ip1
    action      = var.egress_action1
    rule_no     = var.egress_rule1
  
  }

  tags = {
    
      # Mandatory Tags
    Name = var.resource_name
    Organization = var.org_unit
    Application-ID = var.app_id
    Functionality = var.app_functionality
    Environment = var.env
    Project-Name = var.project_name
    Date-Creations = formatdate("DD-MMM-YYYY hh:mm ZZZ", timestamp())
    Build-Version = var.build_version
      # Optional Tags
    Application-Lifecycle = var.app_lifecycle
    Cost-Center-IO = var.cost_center
    System-Owner = var.sys_owner
    Applications-containing-PII = var.app_with_pii
    Applications-with-PCI-requirements = var.app_with_pci
    Data-Classification-Tier = var.data_class_tier

  }
}

