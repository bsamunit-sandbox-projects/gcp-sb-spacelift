# This resource here is to show you how plan policies work.

resource "random_password" "secret" {
  length  = 21
  special = true
}

provider "google" {
  project      = "bsamunit-sandbox-projects"
}

variable "env_code" {
  description = "Prefix for the GCP storage bucket"
  type        = string
}

variable "bucket_name" {
  description = "Name of the GCP storage bucket"
  type        = string
  default     = "bsamunit-gcp-sandbox-003"
}

variable "bucket_name_suffix" {
  description = "Suffix for the GCP storage bucket"
  type        = string
  default     = "-bucket" # example suffix
}


# A sample storage bucket
resource "google_storage_bucket" "my_bucket" {
  #name     = var.env_code + var.bucket_name + var.bucket_name_suffix
  name      = "${var.env_code}-bsamunit-gcp-sandbox-003"
  location = "US"

  storage_class = "STANDARD"
}
