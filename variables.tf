variable "prefix" {
  type = string
  description = "prefix for the resources, needs to be 15 chars or less"
}

variable "region" {
  type = string
  description = "The region in which to create GCP resources"
  default = "europe-west1"
}

variable "project_id" {
  type = string
  description = "The ID of the GCP project"
}

variable "enable_bucket_versioning" {
  type = bool
  description = "Enable or not GCP bucket versioning"
  default = false
}

variable "create_certs" {
  type = bool
  description = "Create or not GCP managed certs"
  default = true
}

variable "access_key_version" {
  type = string
  description = "Version of HMAC key"
  default = "latest"
}