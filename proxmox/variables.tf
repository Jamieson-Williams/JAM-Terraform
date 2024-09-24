variable "pm_api_url" {
    description = "Proxmox API Url"
    type = string
    sensitive = true
}

variable "pm_user" {
    description = "Proxmox user used by Terraform"
    type = string
    sensitive = true
}

variable "pm_password" {
    description = "Proxmox user password"
    type = string
    sensitive = true
}