# Proxmox API
variable "pm_api_url" {
  type = string
}

variable "pm_api_token_id" {
  type = string
}

variable "pm_api_token_secret" {
  type = string
  sensitive = true
}

# VM
variable "vm_id" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_node_name" {
  type = string
}

variable "vm_template_name" {
  type = string
}

variable "vm_ram" {
  type = string
}

variable "vm_cores" {
  type = string
}

variable "vm_os_type" {
  type = string
}

variable "vm_ip_config" {
  type = string
}

variable "vm_agent_enabled" {
  type = string
}

variable "vm_cloudinit_disk_name" {
  type = string
}

variable "vm_storage_disk_name" {
  type = string
}

variable "ssh_user" {
  type = string
  sensitive = true
}

variable "ssh_password" {
  type = string
  sensitive = true
}

# Cloudflare
variable "cf_auth_email" {
  type = string
}

variable "cf_zone_id" {
  type = string
  sensitive = true
}

variable "cf_record_content" {
  type = string
}

variable "cf_global_api_key" {
  type = string
  sensitive = true
}
