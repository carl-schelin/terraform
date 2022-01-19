terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "longmont-server-30" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomknode1"
  svc_bridge = "br0"
  svc_address = "10.100.104.30"
  svc_mac = "52:54:00:9B:68:1E"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomknode1.yaml"
}

module "longmont-server-31" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomknode2"
  svc_bridge = "br0"
  svc_address = "10.100.104.31"
  svc_mac = "52:54:00:9B:68:1F"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomknode2.yaml"
}

module "longmont-server-32" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomknode3"
  svc_bridge = "br0"
  svc_address = "10.100.104.32"
  svc_mac = "52:54:00:9B:68:20"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomknode3.yaml"
}

