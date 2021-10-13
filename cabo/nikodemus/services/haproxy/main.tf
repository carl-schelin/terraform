terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.10"
    }
  }
}

module "cabo-server-02" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomapisvr1"
  svc_bridge = "br0"
  svc_address = "10.100.102.2"
  mac_address = "52:54:00:9B:66:02"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomapisvr1.yaml"
}

module "cabo-server-03" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomhap1"
  svc_bridge = "br0"
  svc_address = "10.100.102.3"
  mac_address = "52:54:00:9B:66:03"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomhap1.yaml"
}

