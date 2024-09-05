output "alb_ip" {
  value       = local.address
  description = "The IP of the Application load balancer"
}

output "backend_services" {
  value       = google_compute_backend_service.private_bucket_backend_svc
  description = "The backend service resources."
  sensitive   = true
}

output "http_proxy" {
  description = "The HTTP proxy used by this module."
  value       = google_compute_target_http_proxy.alb_http_target_proxy.self_link
}

output "https_proxy" {
  description = "The HTTPS proxy used by this module."
  value       = google_compute_target_https_proxy.alb_https_target_proxy.self_link
}

output "url_map" {
  description = "The URL map used by this module."
  value       = google_compute_url_map.alb_url_map.self_link
}
