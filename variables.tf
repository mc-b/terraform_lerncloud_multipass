
# Allgemeine Variablen

# Public Variablen

variable "module" {
    type    = string
    default = "base"
}

variable "mem" {
    type    = string
    default = "2GB"
}

variable "disk" {
    type    = string
    default = "32GB"
}

variable "cpu" {
    default = 1
}

# wird nicht ausgewertet
variable "ports" {
    type    = list(number)
    default = [ 22, 80 ]
}

variable "userdata" {
    description = "Cloud-init Script"
    default = "../modules/base.yaml"
}
