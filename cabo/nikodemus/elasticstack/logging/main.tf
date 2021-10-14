terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "cabo-server-07" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomifel1"
  svc_bridge = "br0"
  svc_address = "10.100.102.7"
  svc_mac = "52:54:00:9B:66:07"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomifel1.yaml"
}

module "cabo-server-08" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomifel2"
  svc_bridge = "br0"
  svc_address = "10.100.102.8"
  svc_mac = "52:54:00:9B:66:08"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomifel2.yaml"
}

module "cabo-server-09" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomifel3"
  svc_bridge = "br0"
  svc_address = "10.100.102.9"
  svc_mac = "52:54:00:9B:66:09"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomifel3.yaml"
}

