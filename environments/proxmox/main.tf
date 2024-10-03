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
  vm_name = "JAM-K8s-Control-01"
  vm_id = 201
  vm_cores = 2
  vm_sockets = 2
  vm_memory = 8196
  disk_size = "50G"
}

module "k8s-nodes" {
  source = "./modules/vm-ubuntu-server"
  vm_name = "JAM-K8s-Node-${format("%02d", count.index + 1)}" 
  vm_id = 202 + count.index
  vm_cores = 2
  vm_sockets = 2
  vm_memory = 16384
  disk_size = "20G"
  count = 2
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

