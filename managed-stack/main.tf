# This resource here is to show you how plan policies work.

resource "random_password" "secret" {
  length  = 21
  special = true
}

provider "google" {
  project      = "bsamunit-sandbox-projects"
}

# A sample storage bucket
resource "google_storage_bucket" "my_bucket" {
  name     = "bsamunit-gcp-sandbox-003"
  location = "US"

  storage_class = "STANDARD"
}
