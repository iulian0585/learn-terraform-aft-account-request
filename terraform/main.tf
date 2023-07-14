module "demo_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "iam.constantinescu+demo.account@gmail.com"
    AccountName               = "demo"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "iam.constantinescu+demo.account@gmail.com"
    SSOUserFirstName          = "Demo"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "demo"
}