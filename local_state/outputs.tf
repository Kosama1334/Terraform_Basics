
output "instance_public_IP" {
  description = "get the pubic IP of the instance created"
  value = aws_instance.tf_first_instance.public_ip
}

output "instance_ipv6_address_count" {
  description = "Get the number of IPv6 addresses"
  value = aws_instance.tf_first_instance.ipv6_address_count
}

output "instance_private_IP" {
  description = "get the private IP of the EC2 instance"
  value = aws_instance.tf_first_instance.private_ip
}
