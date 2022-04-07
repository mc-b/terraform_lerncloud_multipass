
provider "null" {
  # Configuration options
}

resource "null_resource" "multipass" {
  triggers = {
    name = var.module
  }
  provisioner "local-exec" {
    command = "multipass launch --name ${var.module} -c${var.cpu} -m${var.mem} -d${var.disk} --cloud-init ${var.userdata}"
#   command = "multipass set client.primary-name=${var.module}"
  }
  provisioner "local-exec" {
    when    = destroy
    command = "multipass delete ${self.triggers.name} --purge"
  }
}
