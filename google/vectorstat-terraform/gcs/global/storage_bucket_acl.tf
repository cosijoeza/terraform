resource "google_storage_bucket_acl" "tfer--artifacts-002E-meta-altar-265823-002E-appspot-002E-com" {
  bucket = "artifacts.meta-altar-265823.appspot.com"
}

resource "google_storage_bucket_acl" "tfer--meta-altar-265823_cloudbuild" {
  bucket = "meta-altar-265823_cloudbuild"
}

resource "google_storage_bucket_acl" "tfer--vectorstat-unit-parquet-logs" {
  bucket = "vectorstat-unit-parquet-logs"
}
