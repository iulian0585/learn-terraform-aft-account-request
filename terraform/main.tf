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

module "connect_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "i.constantinescu+con@levi9.com"
    AccountName               = "Connect"
    ManagedOrganizationalUnit = "Shared-services"
    SSOUserEmail              = "i.constantinescu+con@levi9.com"
    SSOUserFirstName          = "Connect"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Name" = "Connect"
  }

  change_management_parameters = {
    change_requested_by = "Iulian Constantinescu"
    change_reason       = "Connect account creation"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "shared-services"
}

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

# module "backup2ckup2_account" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "i.constantinescu+backup2@levi9.com"
#     AccountName               = "Backup2"
#     ManagedOrganizationalUnit = "Shared-services"
#     SSOUserEmail              = "i.constantinescu+backup2@levi9.com"
#     SSOUserFirstName          = "Backup"
#     SSOUserLastName           = "Account"
#   }

#   account_tags = {
#     "Name" = "Backup2"
#   }

#   change_management_parameters = {
#     change_requested_by = "Iulian Constantinescu"
#     change_reason       = "Backup2 account creation"
#   }

#   custom_fields = {
#     group = "non-prod"
#   }

#   account_customizations_name = "shared"
# }