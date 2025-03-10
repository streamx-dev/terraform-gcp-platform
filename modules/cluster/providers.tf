terraform {
  required_version = ">= 1.8.1"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.26.0"
    }
  }
}
