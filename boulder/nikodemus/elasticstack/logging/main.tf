terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "boulder-server-14" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomifel1"
  svc_bridge = "br0"
  svc_address = "10.100.101.14"
  svc_mac = "52:54:00:9B:65:0E"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomifel1.yaml"
}

module "boulder-server-15" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomifel2"
  svc_bridge = "br0"
  svc_address = "10.100.101.15"
  svc_mac = "52:54:00:9B:65:0F"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomifel2.yaml"
}

module "boulder-server-16" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomifel3"
  svc_bridge = "br0"
  svc_address = "10.100.101.16"
  svc_mac = "52:54:00:9B:65:10"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomifel3.yaml"
}

