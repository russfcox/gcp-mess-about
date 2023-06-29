variable "project_id" {
  type = string
}

variable "region" {
  type = string
  default = "europe-west9"
}

variable "gke_node_count" {
  type    = number
  default = 1
}

variable "gke_machine_type" {
  type    = string
  default = "e2-medium"
}