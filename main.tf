###
#   Ressourcen
#

resource "null_resource" "multipass" {
  triggers = {
    name = var.module
  }

  # terraform apply
  provisioner "local-exec" {
    command = "multipass launch --name ${var.module} -c${var.cores} -m${var.memory}GB -d${var.storage}GB --cloud-init ${var.userdata}"
  }
  provisioner "local-exec" {
    command = "multipass set client.primary-name=${var.module}"
  }

  # terraform destroy
  provisioner "local-exec" {
    when    = destroy
    command = "multipass delete ${self.triggers.name} --purge"
  }
}
