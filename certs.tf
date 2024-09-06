resource "google_compute_managed_ssl_certificate" "alb_managed_cert" {
  count   = var.create_certs ? 1 : 0
  project = var.project_id
  name    = "${var.prefix}-managed-alb-certs"

  managed {
    domains = [var.domain_name]
  }
}

resource "google_compute_ssl_certificate" "self_signed_cert" {
  count       = var.create_certs == false ? 1 : 0
  project     = var.project_id
  name        = "${var.prefix}-selfsigned-certs"
  description = "Self Signed certs for the ALB"
  private_key = file("path/to/private.key")
  certificate = file("path/to/certificate.crt")
}