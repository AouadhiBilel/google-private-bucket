terraform {
  required_version = ">=1.9.2"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=5.42.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">=5.42.0"
    }
  }
}