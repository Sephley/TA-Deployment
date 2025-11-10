terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "v3.0.2-rc05"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "proxmox" {
  pm_api_url          = "${var.pm_api_url}"
  pm_api_token_id     = "${var.pm_api_token_id}"
  pm_api_token_secret = "${var.pm_api_token_secret}"
}

provider "cloudflare" {
  api_key = "${var.cf_global_api_key}"
  email   = "${var.cf_auth_email}"
}

resource "proxmox_vm_qemu" "new_vm" {
  vmid        = "${var.vm_id}"
  name        = "${var.vm_name}"
  target_node = "${var.vm_node_name}"
  clone       = "${var.vm_template_name}"
  memory      = "${var.vm_ram}"
  cores       = "${var.vm_cores}"
  os_type     = "${var.vm_os_type}"
  ipconfig0   = "${var.vm_ip_config}"
  nameserver  = "${var.vm_dns}"
  agent       = "${var.vm_agent_enabled}"
  scsihw      = "virtio-scsi-pci"
  hotplug     = "network,disk,usb"

  disks {
    ide {
      ide3 {
        cloudinit {
          storage = "${vm_cloudinit_disk_name}"
        }
      }
    }
    scsi {
      scsi0 {
        disk {
          size    = 32
          cache   = "writeback"
          storage = "${var.vm_storage_disk_name}"
         }
      }
    }
  }

  bootdisk = "scsi0"

  serial {
    id   = 0
    type = "socket"
  }

  network {
    model  = "virtio"
    bridge = "${vm_network_bridge_name}"
  }

  connection {
    type     = "ssh"
    user     = "${var.vm_ssh_user}"
    password = "${var.vm_ssh_password}"
    host     = self.ssh_host
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt upgrade -y"
    ]
  }
}

resource "cloudflare_record" "eggplant" {
  zone_id = "${var.cf_zone_id}"
  name    = "${var.cf_record_name}"
  content = "${var.cf_record_content}"
  type    = "CNAME"
  ttl     = 3600
}