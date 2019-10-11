#-----nacl/outputs.tf----

output "new_nacl_id" {
  value = aws_network_acl.nacl.id
}
