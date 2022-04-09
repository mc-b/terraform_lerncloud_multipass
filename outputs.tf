###
#   Outputs wie IP-Adresse und DNS Name
#  

output "ip_vm" {
  value = "${format( "type in 'multipass list'")}"
  description = "The IP address of the server instance."
}

output "fqdn_vm" {
  value = "${format( "http://%s.mshome.net", var.module )}" 
  description = "The FQDN of the server instance."
}