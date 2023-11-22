resource "google_storage_bucket_iam_policy" "tfer--artifacts-002E-meta-altar-265823-002E-appspot-002E-com" {
  bucket = "b/artifacts.meta-altar-265823.appspot.com"

  policy_data = <<POLICY
{
  "bindings": [
    {
      "members": [
        "projectEditor:meta-altar-265823",
        "projectOwner:meta-altar-265823"
      ],
      "role": "roles/storage.legacyBucketOwner"
    },
    {
      "members": [
        "projectViewer:meta-altar-265823"
      ],
      "role": "roles/storage.legacyBucketReader"
    }
  ]
}
POLICY
}

resource "google_storage_bucket_iam_policy" "tfer--meta-altar-265823_cloudbuild" {
  bucket = "b/meta-altar-265823_cloudbuild"

  policy_data = <<POLICY
{
  "bindings": [
    {
      "members": [
        "projectEditor:meta-altar-265823",
        "projectOwner:meta-altar-265823"
      ],
      "role": "roles/storage.legacyBucketOwner"
    },
    {
      "members": [
        "projectViewer:meta-altar-265823"
      ],
      "role": "roles/storage.legacyBucketReader"
    }
  ]
}
POLICY
}

resource "google_storage_bucket_iam_policy" "tfer--vectorstat-unit-parquet-logs" {
  bucket = "b/vectorstat-unit-parquet-logs"

  policy_data = <<POLICY
{
  "bindings": [
    {
      "members": [
        "projectEditor:meta-altar-265823",
        "projectOwner:meta-altar-265823"
      ],
      "role": "roles/storage.legacyBucketOwner"
    },
    {
      "members": [
        "projectViewer:meta-altar-265823"
      ],
      "role": "roles/storage.legacyBucketReader"
    },
    {
      "members": [
        "projectEditor:meta-altar-265823",
        "projectOwner:meta-altar-265823"
      ],
      "role": "roles/storage.legacyObjectOwner"
    },
    {
      "members": [
        "projectViewer:meta-altar-265823"
      ],
      "role": "roles/storage.legacyObjectReader"
    }
  ]
}
POLICY
}
