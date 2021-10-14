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
  machine_name = "cabo0cuomknode1"
  svc_bridge = "br0"
  svc_address = "10.100.102.13"
  svc_mac = "52:54:00:9B:66:0D"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomknode1.yaml"
}

module "cabo-server-14" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomknode2"
  svc_bridge = "br0"
  svc_address = "10.100.102.14"
  svc_mac = "52:54:00:9B:66:0E"
  ram_request = "2048"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomknode2.yaml"
}

module "cabo-server-15" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomknode3"
  svc_bridge = "br0"
  svc_address = "10.100.102.15"
  svc_mac = "52:54:00:9B:66:0F"
  ram_request = "2048"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomknode3.yaml"
}

