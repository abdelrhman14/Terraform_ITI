resource "aws_elasticache_subnet_group" "group" {
  name       = "group"
  subnet_ids = [module.iti_network.public_subnet_1, module.iti_network.public_subnet_2]

  tags = {
    Name = "My DB Elasticache Subnet Group"
  }
}

resource "aws_elasticache_cluster" "elastic_cluster" {
  cluster_id           = "cluster"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.group.name
}  