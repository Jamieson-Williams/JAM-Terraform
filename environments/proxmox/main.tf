module "nas01" {
  source = "./modules/vm-ubuntu-server"
  vm_name = "JAM-Nas-01"
  vm_id = 200
  vm_cores = 4
  vm_sockets = 2
  vm_memory = 4096
  disk_size = "100G"
}

module "k8s" {
  source = "./modules/vm-ubuntu-server"
  vm_name = "JAM-K8s-01"
  vm_id = 201
  vm_cores = 4
  vm_sockets = 2
  vm_memory = 8196
  disk_size = "50G"
}

#module "vyos01" {
#  source = "./modules/vm-vyos-router"
#  vm_name = "JAM-Router-test"
#  vm_id = 101
#  vm_cores = 1
#  vm_sockets = 1
#  vm_memory = 2048
#  disk_size = "15G"
#}

#resource "proxmox_vm_qemu" "JAM-server" {
#    name = "JAM-Nas-01"
#    target_node = "pve"
#    desc = "VM created from packer image 500"
#    vmid = 200
#    cores = 1
#    sockets = 1
#    memory = 2048
#    bios = "ovmf"
#    scsihw = "virtio-scsi-single"
#    os_type = "cloud-init"
#    clone = "ubuntu-server-24"
#
#    #Cloud-Init config
#    agent = 1
#    ciuser = "root"
#    sshkeys = file("~/.ssh/terraform.pub")
#    ipconfig0 = "dhcp"
#
#    disks {
#        scsi {
#            scsi0 {
#                disk {
#                    size = "100G"
#                    storage = "local-lvm"
#                    iothread = true
#                }
#            }
#        }
#    }
#    network {
#        model = "virtio"
#        bridge = "vmbr2"
#        firewall = false
#        tag = 10
#    }
#
#    lifecycle {
#      ignore_changes = [ disk ]
#    }
#}