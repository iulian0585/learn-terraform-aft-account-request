module "sandbox_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "i.constantinescu+sandbox@levi9.com"
    AccountName               = "Sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "i.constantinescu+sandbox@levi9.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Name" = "Sandbox"
  }

  change_management_parameters = {
    change_requested_by = "Iulian Constantinescu"
    change_reason       = "Sandbox account creation"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

# module "dev_account" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "i.constantinescu+dev@levi9.com"
#     AccountName               = "Dev"
#     ManagedOrganizationalUnit = "Dev"
#     SSOUserEmail              = "i.constantinescu+dev@levi9.com"
#     SSOUserFirstName          = "Dev"
#     SSOUserLastName           = "Account"
#   }

#   account_tags = {
#     "Name" = "Dev"
#   }

#   change_management_parameters = {
#     change_requested_by = "Iulian Constantinescu"
#     change_reason       = "Development account creation"
#   }

#   custom_fields = {
#     group = "non-prod"
#   }

#   account_customizations_name = "dev"
# }

# module "prod_account" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "i.constantinescu+prod@levi9.com"
#     AccountName               = "Prod"
#     ManagedOrganizationalUnit = "Prod"
#     SSOUserEmail              = "i.constantinescu+prod@levi9.com"
#     SSOUserFirstName          = "Prod"
#     SSOUserLastName           = "Account"
#   }

#   account_tags = {
#     "Name" = "Prod"
#   }

#   change_management_parameters = {
#     change_requested_by = "Iulian Constantinescu"
#     change_reason       = "Production account creation"
#   }

#   custom_fields = {
#     group = "prod"
#   }

#   account_customizations_name = "prod"
# }

# module "backup_account" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "i.constantinescu+backup@levi9.com"
#     AccountName               = "Backup"
#     ManagedOrganizationalUnit = "Shared-services"
#     SSOUserEmail              = "i.constantinescu+backup@levi9.com"
#     SSOUserFirstName          = "Backup"
#     SSOUserLastName           = "Account"
#   }

#   account_tags = {
#     "Name" = "Backup"
#   }

#   change_management_parameters = {
#     change_requested_by = "Iulian Constantinescu"
#     change_reason       = "Backup account creation"
#   }

#   custom_fields = {
#     group = "non-prod"
#   }

#   account_customizations_name = "shared"
# }