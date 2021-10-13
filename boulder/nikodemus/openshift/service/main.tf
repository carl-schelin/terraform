terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.10"
    }
  }
}

module "boulder-server-32" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomokdsvc1"
  svc_bridge = "br0"
  svc_address = "10.100.101.32"
  mac_address = "52:54:00:9B:65:20"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomokdsvc1.yaml"
}

