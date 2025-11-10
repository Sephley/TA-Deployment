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

# SSH
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

variable "cf_content" {
  type = string
}

variable "cf_global_api_key" {
  type = string
  sensitive = true
}