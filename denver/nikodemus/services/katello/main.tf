terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "denver-server-02" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "dnvr0cuomkat1"
  svc_bridge = "br0"
  svc_address = "10.100.100.2"
  mac_address = "52:54:00:9B:65:00"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_300g.qcow2"
  user_data_path = "${path.module}/dnvr0cuomkat1.yaml"
}

