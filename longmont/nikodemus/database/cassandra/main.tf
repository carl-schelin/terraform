terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "longmont-server-16" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomcas1"
  svc_bridge = "br0"
  svc_address = "10.100.104.16"
  mac_address = "52:54:00;9B;68:10"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomcas1.yaml"
}

