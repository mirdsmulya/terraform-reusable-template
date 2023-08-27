terraform {
  required_version = "1.0.6"
  
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.53.1"
    }
  }
  
  backend "gcs" {
    bucket = "jastip-terraform"
    prefix = "gcs/staging/vault"
    credentials = "../../../terraform-sa.json"
  }
}