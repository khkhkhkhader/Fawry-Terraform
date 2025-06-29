module "network" {
  source               = "../../modules/network"
  env                  = var.env
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  azs                  = var.azs
}

module "compute" {
  source         = "../../modules/compute"
  env            = var.env
  ami_id         = var.ami_id
  key_name       = var.key_name
  instance_type  = var.instance_type
  subnet_ids     = module.network.public_subnet_ids
  vpc_id     = module.network.vpc_id
}
