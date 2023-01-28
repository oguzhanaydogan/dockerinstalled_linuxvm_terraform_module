variable "rg_name" {
    default = "test"
}

variable "location" {
    default = "East US"
}

variable "vm_name" {
    default = "vm-with-docker"
}

variable "vnet_address_space" {
    default = ["10.0.0.0/16"]
}

variable "subnet_address_space" {
    default = ["10.0.1.0/24"]
}

variable "admin_username" {
    default = "oguzhan"
}

variable "admin_password" {
    default = "Password1234"
}