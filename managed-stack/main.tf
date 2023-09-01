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

# A sample storage bucket
resource "google_storage_bucket" "my_bucket" {
  name      = "${var.env_code}-bsamunit-gcp-sandbox-003"
  location = "US"
  storage_class = "STANDARD"
}
