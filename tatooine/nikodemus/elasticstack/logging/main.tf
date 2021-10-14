terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "tatooine-server-07" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "tato0cuomifel1"
  svc_bridge = "br0"
  svc_address = "10.100.103.7"
  mac_address = "52:54:00:9B:67:07"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato0cuomifel1.yaml"
}

module "tatooine-server-08" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "tato0cuomifel2"
  svc_bridge = "br0"
  svc_address = "10.100.103.8"
  mac_address = "52:54:00:9B:67:08"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato0cuomifel2.yaml"
}

module "tatooine-server-09" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "tato0cuomifel3"
  svc_bridge = "br0"
  svc_address = "10.100.103.9"
  mac_address = "52:54:00:9B:67:09"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato0cuomifel3.yaml"
}

