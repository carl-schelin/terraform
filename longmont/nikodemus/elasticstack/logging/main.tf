terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "longmont-server-05" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuelklog1"
  svc_bridge = "br0"
  svc_address = "192.168.1.128"
  svc_mac = "52:54:00:9B:68:05"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuelklog1.yaml"
}

module "longmont-server-06" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuelklog2"
  svc_bridge = "br0"
  svc_address = "192.168.1.129"
  svc_mac = "52:54:00:9B:68:06"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuelklog2.yaml"
}

module "longmont-server-07" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuelklog3"
  svc_bridge = "br0"
  svc_address = "192.168.1.130"
  svc_mac = "52:54:00:9B:68:07"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuelklog3.yaml"
}

