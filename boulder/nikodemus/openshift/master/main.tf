terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "boulder-server-29" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr1cuomokdmst1"
  svc_bridge = "br0"
  svc_address = "192.168.1.78"
  svc_mac = "52:54:00:9B:65:1D"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomokdmst1.yaml"
}

module "boulder-server-30" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr1cuomokdmst2"
  svc_bridge = "br0"
  svc_address = "192.168.1.79"
  svc_mac = "52:54:00:9B:65:1E"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomokdmst2.yaml"
}

module "boulder-server-31" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr1cuomokdmst3"
  svc_bridge = "br0"
  svc_address = "192.168.1.80"
  svc_mac = "52:54:00:9B:65:1F"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomokdmst3.yaml"
}

