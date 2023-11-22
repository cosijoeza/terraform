resource "google_storage_default_object_acl" "tfer--artifacts-002E-meta-altar-265823-002E-appspot-002E-com" {
  bucket      = "artifacts.meta-altar-265823.appspot.com"
  role_entity = ["OWNER:project-editors-69775928864", "OWNER:project-owners-69775928864", "READER:project-viewers-69775928864"]
}

resource "google_storage_default_object_acl" "tfer--meta-altar-265823_cloudbuild" {
  bucket      = "meta-altar-265823_cloudbuild"
  role_entity = ["OWNER:project-editors-69775928864", "OWNER:project-owners-69775928864", "READER:project-viewers-69775928864"]
}

resource "google_storage_default_object_acl" "tfer--vectorstat-unit-parquet-logs" {
  bucket = "vectorstat-unit-parquet-logs"
}
