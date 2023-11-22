resource "google_storage_bucket" "tfer--artifacts-002E-meta-altar-265823-002E-appspot-002E-com" {
  default_event_based_hold    = "false"
  force_destroy               = "false"
  location                    = "US"
  name                        = "artifacts.meta-altar-265823.appspot.com"
  project                     = "meta-altar-265823"
  requester_pays              = "false"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = "false"
}

resource "google_storage_bucket" "tfer--meta-altar-265823_cloudbuild" {
  default_event_based_hold    = "false"
  force_destroy               = "false"
  location                    = "US"
  name                        = "meta-altar-265823_cloudbuild"
  project                     = "meta-altar-265823"
  requester_pays              = "false"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = "false"
}

resource "google_storage_bucket" "tfer--vectorstat-unit-parquet-logs" {
  default_event_based_hold    = "false"
  force_destroy               = "false"
  location                    = "US-CENTRAL1"
  name                        = "vectorstat-unit-parquet-logs"
  project                     = "meta-altar-265823"
  requester_pays              = "false"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = "true"
}
