terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "boulder-server-23" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomkube1"
  svc_bridge = "br0"
  svc_address = "10.100.101.23"
  svc_mac = "52:54:00:9B:65:17"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomkube1.yaml"
}

module "boulder-server-24" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomkube2"
  svc_bridge = "br0"
  svc_address = "10.100.101.24"
  svc_mac = "52:54:00:9B:65:18"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomkube2.yaml"
}

module "boulder-server-25" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomkube3"
  svc_bridge = "br0"
  svc_address = "10.100.101.25"
  svc_mac = "52:54:00:9B:65:19"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomkube3.yaml"
}

