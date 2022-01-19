terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "boulder-server-17" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomifem1"
  svc_bridge = "br0"
  svc_address = "192.168.1.66"
  svc_mac = "52:54:00:9B:65:11"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomifem1.yaml"
}

module "boulder-server-18" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomifem2"
  svc_bridge = "br0"
  svc_address = "192.168.1.67"
  svc_mac = "52:54:00:9B:65:12"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomifem2.yaml"
}

module "boulder-server-19" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "bldr0cuomifem3"
  svc_bridge = "br0"
  svc_address = "192.168.1.68"
  svc_mac = "52:54:00:9B:65:13"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr0cuomifem3.yaml"
}

