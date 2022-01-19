terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "cabo-server-02" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo1cuomapisvr1"
  svc_bridge = "br0"
  svc_address = "192.168.1.89"
  svc_mac = "52:54:00:9B:66:02"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo1cuomapisvr1.yaml"
}

module "cabo-server-03" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo1cuomhap1"
  svc_bridge = "br0"
  svc_address = "192.168.1.90"
  svc_mac = "52:54:00:9B:66:03"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo1cuomhap1.yaml"
}

