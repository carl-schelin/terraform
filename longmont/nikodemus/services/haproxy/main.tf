terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "longmont-server-13" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt2cuomapisvr1"
  svc_bridge = "br0"
  svc_address = "192.168.1.136"
  svc_mac = "52:54:00:9B:68:0D"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomapisvr1.yaml"
}

module "longmont-server-21" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt2cuomhap1"
  svc_bridge = "br0"
  svc_address = "192.168.1.144"
  svc_mac = "52:54:00:9B:68:15"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomhap1.yaml"
}

