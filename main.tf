module "iti_network" {
  source = "/home/abdelrahman-tarek/Documents/AWS/network"
  vpc_cidr = var.vpc_cidr

  subnet_public1_cidr = var.subnet_public1_cidr
  subnet_public2_cidr = var.subnet_public2_cidr
  subnet_private1_cidr = var.subnet_private1_cidr
  subnet_private2_cidr = var.subnet_private2_cidr

  route_table_public_cidr = var.route_table_public_cidr
  route_table_private1_cidr = var.route_table_private1_cidr
  route_table_private2_cidr = var.route_table_private2_cidr

  region = var.region


}
