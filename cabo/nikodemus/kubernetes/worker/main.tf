terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "cabo-server-13" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo1cuomknode1"
  svc_bridge = "br0"
  svc_address = "192.168.1.100"
  svc_mac = "52:54:00:9B:66:0D"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo1cuomknode1.yaml"
}

module "cabo-server-14" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo1cuomknode2"
  svc_bridge = "br0"
  svc_address = "192.168.1.101"
  svc_mac = "52:54:00:9B:66:0E"
  ram_request = "2048"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo1cuomknode2.yaml"
}

module "cabo-server-15" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo1cuomknode3"
  svc_bridge = "br0"
  svc_address = "192.168.1.102"
  svc_mac = "52:54:00:9B:66:0F"
  ram_request = "2048"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo1cuomknode3.yaml"
}

