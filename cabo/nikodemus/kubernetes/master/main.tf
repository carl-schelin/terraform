terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "cabo-server-16" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomkube1"
  svc_bridge = "br0"
  svc_address = "192.168.1.113"
  svc_mac = "52:54:00:9B:66:10"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomkube1.yaml"
}

module "cabo-server-17" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomkube2"
  svc_bridge = "br0"
  svc_address = "192.168.1.104"
  svc_mac = "52:54:00:9B:66:11"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomkube2.yaml"
}

module "cabo-server-18" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomkube3"
  svc_bridge = "br0"
  svc_address = "192.168.1.105"
  svc_mac = "52:54:00:9B:66:12"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomkube3.yaml"
}

