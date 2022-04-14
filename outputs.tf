###
#   Outputs wie IP-Adresse und DNS Name
#  

output "ip_vm" {
  value = var.module
  description = "The IP address of the server instance."
}

output "fqdn_vm" {
  value = "${format( "%s.mshome.net", var.module )}" 
  description = "The FQDN of the server instance."
}