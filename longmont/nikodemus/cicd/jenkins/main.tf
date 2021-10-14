terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "longmont-server-25" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomjkns1"
  svc_bridge = "br0"
  svc_address = "10.100.104.25"
  mac_address = "52:54:00;9B;68:19"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomjkns1.yaml"
}

module "longmont-server-26" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomjkns2"
  svc_bridge = "br0"
  svc_address = "10.100.104.26"
  mac_address = "52:54:00;9B;68:1A"
  ram_request = "2048"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomjkns2.yaml"
}

module "longmont-server-27" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomjkns3"
  svc_bridge = "br0"
  svc_address = "10.100.104.27"
  mac_address = "52:54:00;9B;68:1B"
  ram_request = "2048"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomjkns3.yaml"
}

