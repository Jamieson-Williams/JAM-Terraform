resource "proxmox_vm_qemu" "JAM-server-vm" {
    name = var.vm_name
    target_node = var.target_node
    desc = var.description
    vmid = var.vm_id
    cores = var.vm_cores
    sockets = var.vm_sockets
    memory = var.vm_memory
    bios = var.bios_type
    scsihw = var.scsi_type
    os_type = "cloud-init"
    clone = var.clone

    #Cloud-Init config
    agent = 1
    ciuser = var.ciuser
    sshkeys = file(var.ssh_public_key_location)
    ipconfig0 = "dhcp"

    disks {
        scsi {
            scsi0 {
                disk {
                    size = var.disk_size
                    storage = var.disk_storage
                    iothread = true
                }
            }
        }
    }
    network {
        model = var.network_model
        bridge = var.network_bridge
        firewall = false
        tag = var.network_vlan_tag
    }

    lifecycle {
      ignore_changes = [ disk ]
    }
}