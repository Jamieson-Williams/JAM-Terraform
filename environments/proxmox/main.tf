resource "proxmox_vm_qemu" "JAM-server" {
    name = "JAM-Nas-01"
    target_node = "pve"
    desc = "VM created from packer image 500"
    vmid = 200
    cores = 1
    sockets = 1
    memory = 2048
    bios = "ovmf"
    scsihw = "virtio-scsi-single"
    os_type = "cloud-init"
    clone = "ubuntu-server-24"

    #Cloud-Init config
    agent = 1
    ciuser = "root"
    sshkeys = file("~/.ssh/terraform.pub")
    ipconfig0 = "dhcp"

    disks {
        scsi {
            scsi0 {
                disk {
                    size = "20G"
                    storage = "local-lvm"
                    iothread = true
                }
            }
        }
    }
    network {
        model = "virtio"
        bridge = "vmbr2"
        firewall = false
        tag = 10
    }

    lifecycle {
      ignore_changes = [ disk ]
    }
}