variable "dns" {
  type = list(string)
  default = [
    "8.8.8.8",
    "8.8.4.4",
  ]
}

variable "domain" {
  type    = string
  default = "example.com"
}

variable "ip_suffix" {
  type    = number
  default = 100
}

variable "gateway" {
  type    = number
  default = 254
  validation {
    condition     = var.gateway > 0 && var.gateway < 255
    error_message = "IP address for gateway must be between 1-254."
  }
}

variable "hostname" { type = string }

variable "cidr" {
  type    = string
  default = "192.168.1.0/24"
}

variable "ntp" {
  type = list(string)
  default = [
    "ntp-b.nist.gov",
    "ntp-wwv.nist.gov",
  ]
}

variable "password" { type = string }

variable "createvmfs" {
  type    = bool
  default = false
}

variable "ssh" {
  type    = bool
  default = true
}

variable "vlan" {
  type    = number
  default = 0
  validation {
    condition     = var.vlan >= 0 && var.vlan < 4096
    error_message = "VLAN must be between 0 and 4095."
  }
}
