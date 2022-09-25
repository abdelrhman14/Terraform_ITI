#output vpc_id {
#  value       = module.iti_network.vpc_id
#}

output "bastion_public_ip" {
    value = aws_instance.bastion.public_ip
}