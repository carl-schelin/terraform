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
  machine_name = "lnmt2cuomnagios1"
  svc_bridge = "br0"
  svc_address = "192.168.1.161"
  svc_mac = "52:54:00:9B:68:26"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomnagios1.yaml"
}

module "longmont-server-39" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt2cuomnagios2"
  svc_bridge = "br0"
  svc_address = "192.168.1.162"
  svc_mac = "52:54:00:9B:68:27"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomnagios2.yaml"
}

module "longmont-server-40" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt2cuomnagios3"
  svc_bridge = "br0"
  svc_address = "192.168.1.163"
  svc_mac = "52:54:00:9B:68:28"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomnagios3.yaml"
}

module "longmont-server-41" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt2cuomnagios4"
  svc_bridge = "br0"
  svc_address = "192.168.1.164"
  svc_mac = "52:54:00:9B:68:29"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomnagios4.yaml"
}

module "longmont-server-42" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt2cuomnagios5"
  svc_bridge = "br0"
  svc_address = "192.168.1.165"
  svc_mac = "52:54:00:9B:68:2A"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomnagios5.yaml"
}

module "longmont-server-43" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt2cuomnagios6"
  svc_bridge = "br0"
  svc_address = "192.168.1.166"
  svc_mac = "52:54:00:9B:68:2B"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomnagios6.yaml"
}

