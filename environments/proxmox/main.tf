resource "proxmox_vm_qemu" "terraform-test-01" {
    name = "terraform-test-01"
    target_node = "pve"
    cores = 1
    sockets = 1
    memory = 2048
    bios = "ovmf"
    os_type = 126

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
        ide {
            ide0 {
              cdrom {
                  iso = "local:iso/ubuntu-24.04.1-live-server-amd64.iso"
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