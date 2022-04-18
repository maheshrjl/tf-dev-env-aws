output "dev_public_address" {
    value = [aws_instance.dev_node.public_ip, aws_instance.dev_node.public_dns] 
}