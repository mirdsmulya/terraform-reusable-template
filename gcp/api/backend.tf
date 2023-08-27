terraform {
  required_version = "1.0.6"
  
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.44.1"
    }
  }
  
  backend "gcs" {
    bucket = "jastip-terraform"
    prefix = "api"
    credentials = "../terraform-sa.json"
  }
}