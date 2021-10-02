locals {
  vapp = {
    "guestinfo.dns"        = join(",", var.dns)
    "guestinfo.domain"     = var.domain
    "guestinfo.gateway"    = cidrhost(var.cidr, var.gateway)
    "guestinfo.hostname"   = join(".", [var.hostname, var.domain])
    "guestinfo.ipaddress"  = cidrhost(var.cidr, var.ip_suffix)
    "guestinfo.netmask"    = cidrnetmask(var.cidr)
    "guestinfo.ntp"        = join(",", var.ntp)
    "guestinfo.password"   = sensitive(var.password)
    "guestinfo.createvmfs" = title(tostring(var.createvmfs))
    "guestinfo.ssh"        = title(tostring(var.ssh))
    "guestinfo.vlan"       = tostring(var.vlan)
  }
}