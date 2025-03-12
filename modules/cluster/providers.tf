terraform {
  required_version = ">= 1.8.1"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.24.0"
    }
  }
}
