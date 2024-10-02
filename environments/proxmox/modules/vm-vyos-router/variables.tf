variable "vm_name" {
  description = "Name of VM"
  type = string
}

variable "target_node" {
  description = "Proxmox node name"
  type = string
  default = "pve"
}

variable "description" {
  description = "Description for VM"
  type = string
  default = "VM created from Terraform"
}

variable "vm_id" {
  description = "ID number of VM"
  type = number
}

variable "vm_cores" {
  description = "Number of cores to allocate VM"
  type = number
}

variable "vm_sockets" {
  description = "Number of sockets to allocate VM"
  type = number
}

variable "vm_memory" {
  description = "Amount of memory to allocate VM. Enter number in mb, eg. 2048"
  type = number
}

variable "bios_type" {
  description = "BIOS type for VM"
  type = string
  default = "ovmf"
}

variable "scsi_type" {
  description = "Storage disk controller type for VM"
  type = string
  default = "virtio-scsi-single"
}

#variable "clone" {
#  description = "Name of template VM that is used as clone"
#  type = string
#  default = "ubuntu-server-24"
#}

#variable "ciuser" {
#  description = "Username for Cloud-Init user"
#  type = string
#  default = "root"
#}

#variable "ssh_public_key_location" {
#  description = "Path to ssh public key location"
#  type = string
#  default = "~/.ssh/terraform.pub"
#  sensitive = true
#}

variable "disk_size" {
  description = "The size of the created disk"
  type = string
}

variable "disk_storage" {
  description = "Name of Proxmox storage pool on which to store the disk"
  type = string
  default = "local-lvm"
}

variable "iso_file_path" {
  description = "Path to iso file specified as [storage_pool]:iso/[name of iso file]"
  type = string
  default = "local:iso/vyos-1.5-rolling-202407280023-amd64.iso"
}

variable "network_model" {
  description = "Network card model"
  type = string
  default = "virtio"
}

variable "network_bridge_wan" {
  description = "Bridge to which network device should be attached for WAN"
  type = string
  default = "vmbr1"
}

variable "network_bridge_lan" {
  description = "Bridge to which network device should be attached for lAN"
  type = string
  default = "vmbr2"
}