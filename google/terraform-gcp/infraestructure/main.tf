# Bucket to store website
resource "google_storage_bucket" "website" {
  provider = google
  name     = "example-website-by-cosi"
  location = "US"
}

# Make new object public
resource "google_storage_object_access_control" "public_rule" {
  object = google_storage_bucket_object.static_site_src.name
  bucket = google_storage_bucket.website.name
  role   = "READER"
  entity = "allusers"
}

# Upload the html file to the bucket
resource "google_storage_bucket_object" "static_site_src" {
  name   = "index.html"
  source = ".._website_index.html"
  bucket = google_storage_bucket.website.name

}
