terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "boulder-server-11" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr1cuomifed1"
  svc_bridge = "br0"
  svc_address = "192.168.1.60"
  svc_mac = "52:54:00:9B:65:0B"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomifed1.yaml"
}

module "boulder-server-12" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr1cuomifed2"
  svc_bridge = "br0"
  svc_address = "192.168.1.61"
  svc_mac = "52:54:00:9B:65:0C"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomifed2.yaml"
}

