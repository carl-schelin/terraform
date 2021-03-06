terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "boulder-server-20" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr1cuomknode1"
  svc_bridge = "br0"
  svc_address = "192.168.1.69"
  svc_mac = "52:54:00:9B:65:14"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomknode1.yaml"
}

module "boulder-server-21" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr1cuomknode2"
  svc_bridge = "br0"
  svc_address = "192.168.1.70"
  svc_mac = "52:54:00:9B:65:15"
  ram_request = "2048"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomknode2.yaml"
}

module "boulder-server-22" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr1cuomknode3"
  svc_bridge = "br0"
  svc_address = "192.168.1.71"
  svc_mac = "52:54:00:9B:65:16"
  ram_request = "2048"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomknode3.yaml"
}

