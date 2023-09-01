# This resource here is to show you how plan policies work.

resource "random_password" "secret" {
  length  = 21
  special = true
}

provider "google" {
  project      = "bsamunit-sandbox-projects"
}

variable "env_code" {
  description = "A variable to hold Env Code"
  type        = string
  // Optionally, you can provide a default if necessary
}

# A sample storage bucket
resource "google_storage_bucket" "my_bucket" {
  name     = "bsamunit-gcp-sandbox-003" + var.env_code
  location = "US"

  storage_class = "STANDARD"
}
