resource "google_service_account" "tfer--100365875270426308551" {
  account_id   = "cloudsql"
  disabled     = "false"
  display_name = "cloudsql"
  project      = "meta-altar-265823"
}

resource "google_service_account" "tfer--102070390751798840182" {
  account_id   = "maint-server"
  description  = "Service account for maint-server service"
  disabled     = "false"
  display_name = "maint-server"
  project      = "meta-altar-265823"
}

resource "google_service_account" "tfer--112936346135634023225" {
  account_id   = "vectorstat-terraformer"
  description  = "Service account for terraformer"
  disabled     = "false"
  display_name = "vectorstat-terraformer"
  project      = "meta-altar-265823"
}

resource "google_service_account" "tfer--113043034206019462143" {
  account_id   = "vectorstat-terraform-sa"
  description  = "Service account for terraform service"
  disabled     = "false"
  display_name = "Terraform's service account"
  project      = "meta-altar-265823"
}
