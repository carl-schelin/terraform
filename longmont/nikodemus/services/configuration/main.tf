terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "longmont-server-46" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomsalt1"
  svc_bridge = "br0"
  svc_address = "192.168.1.169"
  svc_mac = "52:54:00:9B:68:2E"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomsalt1.yaml"
}

module "longmont-server-49" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomtform1"
  svc_bridge = "br0"
  svc_address = "192.168.1.172"
  svc_mac = "52:54:00:9B:68:31"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomtform1.yaml"
}

module "longmont-server-51" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomvault1"
  svc_bridge = "br0"
  svc_address = "192.168.1.174"
  svc_mac = "52:54:00:9B:68:33"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomvault1.yaml"
}

