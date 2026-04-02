output "vpc_id" {
  value = module.network.vpc_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "instance_id" {
  value = module.web_server.instance_id
}

output "instance_public_ip" {
  value = module.web_server.public_ip
}

output "instance_private_ip" {
  value = module.web_server.private_ip
}

output "instance_public_dns" {
  value = module.web_server.public_dns
}
