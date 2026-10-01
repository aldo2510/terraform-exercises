locals {
  environments = {
    dev  = { enabled = true,  suffix = "d" }
    qa   = { enabled = true,  suffix = "q" }
    prod = { enabled = false, suffix = "p" }
  }

  enabled_environments = {
    for name, cfg in local.environments : name => cfg
    if cfg.enabled
  }

  names = {
    for name, cfg in local.enabled_environments :
    name => "app-${cfg.suffix}"
  }
}

output "enabled_environments" {
  value = keys(local.enabled_environments)
}

output "generated_names" {
  value = local.names
}