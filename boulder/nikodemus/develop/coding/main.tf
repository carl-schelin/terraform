terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.10"
    }
  }
}

module "boulder-server-04" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomdev1"
  svc_bridge = "br0"
  svc_address = "10.100.101.4"
  mac_address = "52:54:00:9B:65:04"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomdev1.yaml"
}

module "boulder-server-05" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomdev2"
  svc_bridge = "br0"
  svc_address = "10.100.101.5"
  mac_address = "52:54:00:9B:65:05"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomdev2.yaml"
}

module "boulder-server-06" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomdev3"
  svc_bridge = "br0"
  svc_address = "10.100.101.6"
  mac_address = "52:54:00:9B:65:06"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomdev3.yaml"
}

module "boulder-server-07" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomdev4"
  svc_bridge = "br0"
  svc_address = "10.100.101.7"
  mac_address = "52:54:00:9B:65:07"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomdev4.yaml"
}

