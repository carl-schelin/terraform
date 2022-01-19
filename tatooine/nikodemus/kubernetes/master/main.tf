terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "tatooine-server-16" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "tato0cuomkube1"
  svc_bridge = "br0"
  svc_address = "192.168.1.121"
  svc_mac = "52:54:00:9B:67:10"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato0cuomkube1.yaml"
}

module "tatooine-server-17" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "tato0cuomkube2"
  svc_bridge = "br0"
  svc_address = "192.168.1.122"
  svc_mac = "52:54:00:9B:67:11"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato0cuomkube2.yaml"
}

module "tatooine-server-18" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "tato0cuomkube3"
  svc_bridge = "br0"
  svc_address = "192.168.1.123"
  svc_mac = "52:54:00:9B:67:12"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato0cuomkube3.yaml"
}

