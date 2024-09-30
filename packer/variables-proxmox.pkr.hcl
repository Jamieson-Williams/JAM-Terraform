variable "pm_url" {
    description = "Proxmox Url"
    type = string
    sensitive = true 
}

variable "pm_user" {
    description = "Proxmox user account used to build images"
    type = string
    sensitive = true 
}

variable "pm_password" {
    description = "Proxmox user account password"
    type = string
    sensitive = true 
}

variable "pm_node" {
    description = "Proxmox node"
    type = string
    sensitive = true 
}

variable "pm_iso_storage_pool" {
    description = "Proxmox storage pool used to store ISO iamges"
    type = string
    sensitive = true 
}

variable "pm_storage_pool" {
    description = "Proxmox storage pool used to store VM disk images"
    type = string
    sensitive = true 
}

variable "ssh_user" {
    description = "SSH user account"
    type = string
    sensitive = true 
}

#variable "ssh_password" {
#    description = "SSH user account password"
#    type = string
#    sensitive = true 
#}

variable "ssh_private_key" {
    description = "Path to SSH private key"
    type = string
    sensitive = true
}

variable "http_ip" {
    description = "HTTP address to access cloud-init user-data file from"
    type = string
    sensitive = true
}