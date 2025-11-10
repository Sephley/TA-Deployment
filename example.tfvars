# This file contains some example values, in an attempt to help understand what goes in where.

# Proxmox variables

# Proxmox API URL
pm_api_url = "your-proxmox-api-url"
pm_api_token_secret = "proxmox-api-token-secret"
pm_api_token_id = "proxmox-api-token-id"

# Cloudflare

## Cloudflare API key
cf_global_api_key = "your-cloudflare-api-key"

## Cloudflare API key
cf_auth_email = "your-cloudflare-auth-email"

## Cloudflare zone ID
cf_zone_id = "your-cloudflre-zone-id"

## Cloudflare record name
cf_record_name = "TA-Container"

## Cloudflare record content
cf_record_content = "randomstring"

# VM

## VM ID
vm_id = "200"

## VM name
vm_name = "paul"

## Node for VM to be deployed on
vm_node_name = "pve"

## VM Template Name
vm_template_name = "ubuntu-noble"

## VM Memory (RAM)
vm_ram = 4096

## VM CPU Cores
vm_cores = 2

## VM OS type
vm_os_type = "cloud-init"

## VM IP Configuration
vm_ip_config = "ip=192.168.1.10/24,gw=192.168.1.1"

## VM QEMU Guest Agent
vm_agent_enabled = 1

## VM Cloudinit disk name
vm_cloudinit_disk_name = "local-lvm"

## VM Storage disk name
vm_storage_disk_name = "hdd01"

## VM Network bridge name
vm_network_bridge_name = "vmbr0"

## VM SSH user
vm_ssh_user = "sshuser"

## VM SSH password
vm_ssh_password = "supersafepassword"