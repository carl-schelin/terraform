terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "tatooine-server-04" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "tato1cuomifed1"
  svc_bridge = "br0"
  svc_address = "192.168.1.109"
  svc_mac = "52:54:00:9B:67:04"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato1cuomifed1.yaml"
}

module "tatooine-server-05" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "tato1cuomifed2"
  svc_bridge = "br0"
  svc_address = "192.168.1.110"
  svc_mac = "52:54:00:9B:67:05"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato1cuomifed2.yaml"
}

