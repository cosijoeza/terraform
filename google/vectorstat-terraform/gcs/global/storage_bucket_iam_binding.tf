resource "google_storage_bucket_iam_binding" "tfer--artifacts-002E-meta-altar-265823-002E-appspot-002E-com" {
  bucket  = "b/artifacts.meta-altar-265823.appspot.com"
  members = ["projectViewer:meta-altar-265823"]
  role    = "roles/storage.legacyBucketReader"
}

resource "google_storage_bucket_iam_binding" "tfer--meta-altar-265823_cloudbuild" {
  bucket  = "b/meta-altar-265823_cloudbuild"
  members = ["projectEditor:meta-altar-265823", "projectOwner:meta-altar-265823"]
  role    = "roles/storage.legacyBucketOwner"
}

resource "google_storage_bucket_iam_binding" "tfer--vectorstat-unit-parquet-logs" {
  bucket  = "b/vectorstat-unit-parquet-logs"
  members = ["projectViewer:meta-altar-265823"]
  role    = "roles/storage.legacyObjectReader"
}
