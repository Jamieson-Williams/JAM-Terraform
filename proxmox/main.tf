resource "proxmox_vm_qemu" "terraform-test-01" {
    name = "terraform-test-01"
    target_node = "pve"
    cores = 1
    sockets = 1
    memory = 2048
    bios = "ovmf"
    os_type = 126

    disk {
        slot = "scsi0"
        size = "20G"
        type = "disk"
        storage = "local-lvm"
        iothread = true
    }

    network {
        model = "virtio"
        bridge = "vmbr2"
        firewall = false
    }

    lifecycle {
      ignore_changes = [ disk ]
    }
}