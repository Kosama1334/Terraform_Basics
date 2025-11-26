#first Output block

output "instance_public_IP" {
  description = "get the pubic IP of the instance created"
  value = aws_instance.tf_first_instance.public_ip
}
