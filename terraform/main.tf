##########################
# Shared Services Accounts
##########################

module "shared_services_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "i.constantinescu+ss@levi9.com"
    AccountName               = "SharedServices"
    ManagedOrganizationalUnit = "Shared-services"
    SSOUserEmail              = "i.constantinescu+ss@levi9.com"
    SSOUserFirstName          = "SharedServices"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Name" = "SharedServices"
  }

  change_management_parameters = {
    change_requested_by = "Iulian Constantinescu"
    change_reason       = "SharedServices account creation"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "shared-services"
}

module "backup2_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "i.constantinescu+backup2@levi9.com"
    AccountName               = "Backup2"
    ManagedOrganizationalUnit = "Shared-services"
    SSOUserEmail              = "i.constantinescu+backup2@levi9.com"
    SSOUserFirstName          = "Backup"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Name" = "Backup2"
  }

  change_management_parameters = {
    change_requested_by = "Iulian Constantinescu"
    change_reason       = "Backup2 account creation"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "shared-services"
}

###################
# Workload Accounts
###################

# module "sandbox_account" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "i.constantinescu+sandbox@levi9.com"
#     AccountName               = "Sandbox"
#     ManagedOrganizationalUnit = "Sandbox"
#     SSOUserEmail              = "i.constantinescu+sandbox@levi9.com"
#     SSOUserFirstName          = "Sandbox"
#     SSOUserLastName           = "Account"
#   }

#   account_tags = {
#     "Name" = "Sandbox"
#   }

#   change_management_parameters = {
#     change_requested_by = "Iulian Constantinescu"
#     change_reason       = "Sandbox account creation"
#   }

#   custom_fields = {
#     group = "non-prod"
#   }

#   account_customizations_name = "sandbox"
# }

module "dev2_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "i.constantinescu+dev2@levi9.com"
    AccountName               = "Dev2"
    ManagedOrganizationalUnit = "Dev"
    SSOUserEmail              = "i.constantinescu+dev2@levi9.com"
    SSOUserFirstName          = "Dev2"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Name" = "Dev2"
  }

  change_management_parameters = {
    change_requested_by = "Iulian Constantinescu"
    change_reason       = "Dev2 account creation"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "dev"
}

module "prod2_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "i.constantinescu+prod2@levi9.com"
    AccountName               = "Prod2"
    ManagedOrganizationalUnit = "Prod"
    SSOUserEmail              = "i.constantinescu+prod2@levi9.com"
    SSOUserFirstName          = "Prod"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Name" = "Prod2"
  }

  change_management_parameters = {
    change_requested_by = "Iulian Constantinescu"
    change_reason       = "Production account creation"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "prod"
}