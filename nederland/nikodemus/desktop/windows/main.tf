terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "nederland-server-12" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld1cuomwin7"
  svc_bridge = "br0"
  svc_address = "192.168.1.187"
  svc_mac = "52:54:00:9B:69:0C"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld1cuomwin7.yaml"
}

module "nederland-server-13" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld1cuomwinxp"
  svc_bridge = "br0"
  svc_address = "192.168.1.188"
  svc_mac = "52:54:00:9B:69:0D"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld1cuomwinxp.yaml"
}

