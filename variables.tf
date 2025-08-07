variable "resource_group_name" {
  default = "terraform-rg"
}

variable "location" {
  default = "East US"
}

variable "prefix" {
  default = "tfvm"
}

variable "vm_size" {
  default = "Standard_B1s"
}

variable "admin_username" {
  default = "azureuser"
}

variable "ssh_public_key" {
  description = "Path to your public SSH key"
  default     = "/Users/harshitpal/.ssh/id_rsa.pub"
}
