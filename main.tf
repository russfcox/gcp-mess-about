/******************************************
  Get available zones in region
 *****************************************/

data "google_compute_zones" "available" {
  provider = google

  project = var.project_id
  region  = var.region
}

resource "random_shuffle" "available_zones" {
  input        = data.google_compute_zones.available.names
  result_count = 3
}

/******************************************
  Get available container engine versions
 *****************************************/
# data "google_container_engine_versions" "region" {
#   location = local.location
#   project  = var.project_id
# }

# data "google_container_engine_versions" "zone" {
#   // Work around to prevent a lack of zone declaration from causing regional cluster creation from erroring out due to error
#   //
#   //     data.google_container_engine_versions.zone: Cannot determine zone: set in this resource, or set provider-level zone.
#   //
#   location = local.zone_count == 0 ? data.google_compute_zones.available.names[0] : var.zones[0]
#   project  = var.project_id
# }

/*****************
Create service account
*******************/

# module "service_accounts" {
#   source = "terraform-google-modules/service-accounts/google"
#   version = "~>3.0"
#   project_id = var.project_id
#   prefix = "sa"
#   names = ["gke-cluster"]
#   project_roles = [
#     "${var.project_id}=>roles/"
#   ]
# }

# resource "google_service_account" "cluster" {

# }

# resource "google_service_account_iam_binding" "name" {

# }