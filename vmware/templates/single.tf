provider "vsphere" {
  # If you use a domain, set your login like this "Domain\\User"
  user           = "administrator@internal.pri"
  password       = "VCENTER"
  vsphere_server = "lnmt1cuomvcenter.internal.pri"

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

variable "data_center" {
}

variable "resource_pool" {
}

variable "data_store" {
}

variable "system_network" {
}

variable "machine_image" {
}

variable "module_name" {
}

variable "machine_name" {
}

variable "cpu_request" {
}

variable "ram_request" {
}

variable "mac_address" {
}

variable "template_ip" {
}


data "vsphere_datacenter" "dc" {
  name = var.data_center
}

# If you don't have any resource pools, put "/Resources" after cluster name
data "vsphere_resource_pool" "pool" {
  name          = var.resource_pool
  datacenter_id = data.vsphere_datacenter.dc.id
}

# Retrieve datastore information on vsphere
data "vsphere_datastore" "datastore" {
  name          = var.data_store
  datacenter_id = data.vsphere_datacenter.dc.id
}

# Retrieve network information on vsphere
data "vsphere_network" "network" {
  name          = var.system_network
  datacenter_id = data.vsphere_datacenter.dc.id
}

# Retrieve template information on vsphere
data "vsphere_virtual_machine" "template" {
  name          = var.machine_image
  datacenter_id = data.vsphere_datacenter.dc.id
} 

# Set vm parameters
resource "vsphere_virtual_machine" "virtual_machine" {
  name             = var.machine_name
  num_cpus         = var.cpu_request
  memory           = var.ram_request
  datastore_id     = data.vsphere_datastore.datastore.id
  resource_pool_id = data.vsphere_resource_pool.pool.id
  guest_id         = data.vsphere_virtual_machine.template.guest_id
  scsi_type        = data.vsphere_virtual_machine.template.scsi_type

  # Set network parameters
  network_interface {
    network_id = data.vsphere_network.network.id
    mac_address = var.mac_address
  }

  # Use a predefined vmware template as main disk
  disk {
    label = "${var.machine_image}.vmdk"
    size = "100"
  }

  # create the VM from a template
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }

# Execute script on remote vm after this creation
  provisioner "remote-exec" {
    script = "script.sh"
    connection {
      type     = "ssh"
      user     = "root"
      password = "TEMPLATE"
      host     = var.template_ip
    }
  }
}

