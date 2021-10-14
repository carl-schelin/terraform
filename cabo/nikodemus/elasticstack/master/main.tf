terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "cabo-server-10" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomifem1"
  svc_bridge = "br0"
  svc_address = "10.100.102.10"
  svc_mac = "52:54:00:9B:66:0A"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomifem1.yaml"
}

module "cabo-server-11" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomifem2"
  svc_bridge = "br0"
  svc_address = "10.100.102.11"
  svc_mac = "52:54:00:9B:66:0B"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomifem2.yaml"
}

module "cabo-server-12" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "cabo0cuomifem3"
  svc_bridge = "br0"
  svc_address = "10.100.102.12"
  svc_mac = "52:54:00:9B:66:0C"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo0cuomifem3.yaml"
}

