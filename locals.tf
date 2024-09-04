locals {
  address = var.create_global_address ? join("", google_compute_global_address.alb_global_address[*].address) : var.global_address
}