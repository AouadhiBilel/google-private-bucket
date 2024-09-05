variable "prefix" {
  type        = string
  description = "prefix for the resources, needs to be 15 chars or less"
}

variable "region" {
  type        = string
  description = "The region in which to create GCP resources"
  default     = "europe-west1"
}

variable "project_id" {
  type        = string
  description = "The ID of the GCP project"
}

variable "enable_bucket_versioning" {
  type        = bool
  description = "Enable or not GCP bucket versioning"
  default     = false
}

variable "create_certs" {
  type        = bool
  description = "Create or not GCP managed certs"
  default     = true
}

variable "access_key_version" {
  type        = string
  description = "Version of HMAC key"
  default     = "latest"
}

variable "create_global_address" {
  type        = bool
  description = "Create or not a global IPV4 address"
}

variable "global_address" {
  type        = string
  description = "The address for the ALB if create_global_address is false"
}

variable "domain_name" {
  type = string
  description = "The domain name associated with the certs"
}