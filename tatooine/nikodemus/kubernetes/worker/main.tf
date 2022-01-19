terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "tatooine-server-13" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "tato0cuomknode1"
  svc_bridge = "br0"
  svc_address = "192.168.1.118"
  svc_mac = "52:54:00:9B:67:0D"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato0cuomknode1.yaml"
}

module "tatooine-server-14" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "tato0cuomknode2"
  svc_bridge = "br0"
  svc_address = "192.168.1.119"
  svc_mac = "52:54:00:9B:67:0E"
  ram_request = "2048"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato0cuomknode2.yaml"
}

module "tatooine-server-15" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "tato0cuomknode3"
  svc_bridge = "br0"
  svc_address = "192.168.1.120"
  svc_mac = "52:54:00:9B:67:0F"
  ram_request = "2048"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato0cuomknode3.yaml"
}

