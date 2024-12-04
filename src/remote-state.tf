module "efs" {
  source  = "cloudposse/stack-config/yaml//modules/remote-state"
  version = "1.8.0"

  for_each = local.efs_components

  component = each.value

  context = module.this.context
}

module "eks" {
  source  = "cloudposse/stack-config/yaml//modules/remote-state"
  version = "1.8.0"

  component = var.eks_component_name

  context = module.this.context
}
