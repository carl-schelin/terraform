terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.10"
    }
  }
}

module "cabo-server-04" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomifed1"
  svc_bridge = "br0"
  svc_address = "10.100.102.4"
  mac_address = "52:54:00:9B:66:04"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomifed1.yaml"
}

module "cabo-server-05" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomifed2"
  svc_bridge = "br0"
  svc_address = "10.100.102.5"
  mac_address = "52:54:00:9B:66:05"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomifed2.yaml"
}

