#libvirt.tf
terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.10"
    }
  }
}

variable "machine_name" {
}

variable "machine_image" {
}

variable "ram_request" {
}

variable "cpu_request" {
}

variable "svc_address" {
}

variable "svc_bridge" {
}

variable "svc_mac" {
}

variable "user_data_path" {
}

# add the provider
provider "libvirt" {
  uri = "qemu:///system"
}

# create pool
resource "libvirt_pool" "centos" {
  name = "${var.machine_name}_pool"
  type = "dir"
  path = "/opt/libvirt_images/${var.machine_name}_pool/"
}

# create image
resource "libvirt_volume" "image-qcow2" {
  name   = "${var.machine_name}-amd64.qcow2"
  pool   = libvirt_pool.centos.name
  source = "/opt/downloads/${var.machine_image}"
  format = "qcow2"
}

# add cloudinit disk to pool
resource "libvirt_cloudinit_disk" "commoninit" {
  name      = "commoninit.iso"
  pool      = libvirt_pool.centos.name
  user_data = data.template_file.user_data.rendered
}

# read the configuration
data "template_file" "user_data" {
  template = file(var.user_data_path)
}

# define KVM domain to create
resource "libvirt_domain" "test-domain" {

  # name should be unique!
  name   = "${var.machine_name}_domain"
  memory = var.ram_request
  vcpu   = var.cpu_request
  # add the cloud init disk to share user data
  cloudinit = libvirt_cloudinit_disk.commoninit.id

  # set to the libvirt network
  network_interface {
    bridge    = var.svc_bridge
    hostname  = var.machine_name
    addresses = [var.svc_address]
    mac       = var.svc_mac
  }

  console {
    type        = "pty"
    target_type = "serial"
    target_port = "0"
  }

  disk {
    volume_id = libvirt_volume.image-qcow2.id
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}

