module "oci-adb" {
  source                    = "github.com/fc-terraform-code/tfc-oci-adb-module"
  db_name                   = "trondataware"
  admin_password            = var.admin_password
  compartment_id            = var.compartment_ocid
  db_workload               = "DW" # Autonomous data warehouse (ADW)
  license_model             = "LICENSE_INCLUDED"
  db_version                = "23ai"
  is_free_tier              = "true"  
  tenancy_ocid              = var.tenancy_ocid
  user_ocid                 = var.user_ocid
  private_key               = var.private_key
  compartment_ocid          = var.compartment_ocid
  region                    = var.region
  fingerprint               = var.fingerprint
  whitelisted_ips           = ["0.0.0.0/0"]
  tag_namespace_name        = "trondataware"
  identity_tag_name         = "iac"
  freeform_tags =  {
    Environment = "dev"
    Department = "ops"
  }
  defined_tags = {
    "trondataware.iac" = "terraform"
  }
}
