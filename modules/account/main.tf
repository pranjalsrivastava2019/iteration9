#----account/main.tf----

resource "aws_organizations_account" "new_account" {
  name  = var.account_name
  email = var.account_email

  tags = {
       # Mandatory Tags
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

