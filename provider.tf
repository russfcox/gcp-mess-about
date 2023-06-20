# https://registry.terraform.io/providers/hashicorp/google/latest/docs
terraform {
 backend "gcs" {
   bucket  = "rcox-gke-test-tfstate"
   prefix  = "terraform/state"
 }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.69"
    }
  }
  required_version = ">= 0.15"
}

provider "google" {
  project = var.project_id
  region  = var.region
}
