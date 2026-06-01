# This file contains the format with no values that you can use to copy + paste into your own vars.tfvars file.
# Useful if you want to configure your environment from scratch.

# Proxmox variables

# Proxmox API URL
pm_api_url = ""
pm_api_token_secret = ""
pm_api_token_id = ""

# Cloudflare

## Cloudflare API key
cf_global_api_key = ""

## Cloudflare API key
cf_auth_email = ""

## Cloudflare zone ID
cf_zone_id = ""

## Cloudflare record name
cf_record_name = ""

## Cloudflare record content
cf_record_content = ""

# VM

## VM ID
vm_id = ""

## VM name
vm_name = ""

## Node for VM to be deployed on
vm_node_name = ""

## VM Template Name
vm_template_name = ""

## VM Memory (RAM)
vm_ram = 4096

## VM CPU Cores
vm_cores = 2

## VM OS type
vm_os_type = ""

## VM IP Configuration
vm_ip_config = ""

## VM QEMU Guest Agent
vm_agent_enabled = 1

## VM Cloudinit disk name
vm_cloudinit_disk_name = ""

## VM Storage disk name
vm_storage_disk_name = ""

## VM Network bridge name
vm_network_bridge_name = ""

## VM SSH user
vm_ssh_user = ""

## VM SSH password
vm_ssh_password = ""
