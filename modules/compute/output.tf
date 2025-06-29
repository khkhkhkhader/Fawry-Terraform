output "instance_ids" {
  value = [for i in aws_instance.ec2 : i.id]
}

output "public_ips" {
  value = [for i in aws_instance.ec2 : i.public_ip]
}

output "private_ips" {
  value = [for i in aws_instance.ec2 : i.private_ip]
}
