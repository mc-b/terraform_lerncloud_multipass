
# Allgemeine Variablen

# Public Variablen

variable "module" {
    type    = string
    default = "base"
}

variable "mem" {
    type    = string
    default = "4GB"
}

variable "disk" {
    type    = string
    default = "32GB"
}

variable "cpu" {
    default = 2
}

variable "userdata" {
    description = "Cloud-init Script"
    default = "../modules/base.yaml"
}
