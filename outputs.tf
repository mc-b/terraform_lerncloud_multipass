###
#   Outputs wie IP-Adresse und DNS Name
#  

output "ip_vm" {
  value = "${ 
  formatlist( "type 'mulitipass list'")}"
  description = "The IP address of the server instance."
}

output "ip_fqdn" {
  value ="${ 
  formatlist( "http://%s.mshome.net", var.module )}" 
  description = "The FQDN of the server instance."
}