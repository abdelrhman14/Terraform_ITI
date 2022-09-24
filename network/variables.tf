variable vpc_cidr {
  type        = string
}
 

#--------------------------------------------------------------------------------------------

variable subnet_public1_cidr {
  type        = string
}

variable subnet_public2_cidr {
  type        = string
}

variable subnet_private1_cidr {
  type        = string
}

variable subnet_private2_cidr {
  type        = string
}

#------------------------------------------------------------------------------------------------------------

variable route_table_public_cidr {
  type        = string
}

variable route_table_private1_cidr {
  type        = string
}

variable route_table_private2_cidr {
  type        = string
}

variable region {
  type = string
}