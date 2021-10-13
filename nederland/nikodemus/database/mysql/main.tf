terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.10"
    }
  }
}

module "nederland-server-11" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld1cuomysql1"
  svc_bridge = "br0"
  svc_address = "10.100.105.11"
  mac_address = "52:54:00:9B:69:0B"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld1cuomysql1.yaml"
}

