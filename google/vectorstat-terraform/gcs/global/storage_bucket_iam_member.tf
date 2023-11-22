resource "google_storage_bucket_iam_member" "tfer--artifacts-002E-meta-altar-265823-002E-appspot-002E-com" {
  bucket = "b/artifacts.meta-altar-265823.appspot.com"
  member = "projectViewer:meta-altar-265823"
  role   = "roles/storage.legacyBucketReader"
}

resource "google_storage_bucket_iam_member" "tfer--meta-altar-265823_cloudbuild" {
  bucket = "b/meta-altar-265823_cloudbuild"
  member = "projectViewer:meta-altar-265823"
  role   = "roles/storage.legacyBucketReader"
}

resource "google_storage_bucket_iam_member" "tfer--vectorstat-unit-parquet-logs" {
  bucket = "b/vectorstat-unit-parquet-logs"
  member = "projectViewer:meta-altar-265823"
  role   = "roles/storage.legacyBucketReader"
}
