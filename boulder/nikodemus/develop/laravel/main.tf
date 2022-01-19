terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "boulder-server-26" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr1cuomlar1"
  svc_bridge = "br0"
  svc_address = "192.168.1.75"
  svc_mac = "52:54:00:9B:65:1A"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomlar1.yaml"
}

