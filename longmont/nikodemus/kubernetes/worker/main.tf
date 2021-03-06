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
  machine_name = "lnmt2cuomknode1"
  svc_bridge = "br0"
  svc_address = "192.168.1.153"
  svc_mac = "52:54:00:9B:68:1E"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomknode1.yaml"
}

module "longmont-server-31" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt2cuomknode2"
  svc_bridge = "br0"
  svc_address = "192.168.1.154"
  svc_mac = "52:54:00:9B:68:1F"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomknode2.yaml"
}

module "longmont-server-32" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt2cuomknode3"
  svc_bridge = "br0"
  svc_address = "192.168.1.155"
  svc_mac = "52:54:00:9B:68:20"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomknode3.yaml"
}

