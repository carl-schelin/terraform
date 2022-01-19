terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "longmont-server-38" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomnagios1"
  svc_bridge = "br0"
  svc_address = "10.100.104.38"
  svc_mac = "52:54:00:9B:68:26"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomnagios1.yaml"
}

module "longmont-server-39" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomnagios2"
  svc_bridge = "br0"
  svc_address = "10.100.104.39"
  svc_mac = "52:54:00:9B:68:27"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomnagios2.yaml"
}

module "longmont-server-40" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomnagios3"
  svc_bridge = "br0"
  svc_address = "10.100.104.40"
  svc_mac = "52:54:00:9B:68:28"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomnagios3.yaml"
}

module "longmont-server-41" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomnagios4"
  svc_bridge = "br0"
  svc_address = "10.100.104.41"
  svc_mac = "52:54:00:9B:68:29"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomnagios4.yaml"
}

module "longmont-server-42" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomnagios5"
  svc_bridge = "br0"
  svc_address = "10.100.104.42"
  svc_mac = "52:54:00:9B:68:2A"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomnagios5.yaml"
}

module "longmont-server-43" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomnagios6"
  svc_bridge = "br0"
  svc_address = "10.100.104.43"
  svc_mac = "52:54:00:9B:68:2B"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomnagios6.yaml"
}

