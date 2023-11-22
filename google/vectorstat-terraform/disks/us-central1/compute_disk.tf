resource "google_compute_disk" "tfer--us-central1-a-002F-maint-server" {
  image                     = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-minimal-2004-focal-v20210429"
  name                      = "maint-server"
  physical_block_size_bytes = "4096"
  project                   = "meta-altar-265823"
  provisioned_iops          = "0"
  size                      = "64"
  type                      = "pd-balanced"
  zone                      = "us-central1-a"
}

resource "google_compute_disk" "tfer--us-central1-a-002F-vectorstat-api" {
  image                     = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-11-bullseye-v20230206"
  name                      = "vectorstat-api"
  physical_block_size_bytes = "4096"
  project                   = "meta-altar-265823"
  provisioned_iops          = "0"
  size                      = "10"
  type                      = "pd-balanced"
  zone                      = "us-central1-a"
}

resource "google_compute_disk" "tfer--us-central1-a-002F-vectorstat-dev" {
  image                     = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-minimal-2004-focal-v20210928"
  name                      = "vectorstat-dev"
  physical_block_size_bytes = "4096"
  project                   = "meta-altar-265823"
  provisioned_iops          = "0"
  size                      = "64"
  type                      = "pd-balanced"
  zone                      = "us-central1-a"
}

resource "google_compute_disk" "tfer--us-central1-a-002F-vectorstat-int" {
  image                     = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-minimal-2004-focal-v20210928"
  name                      = "vectorstat-int"
  physical_block_size_bytes = "4096"
  project                   = "meta-altar-265823"
  provisioned_iops          = "0"
  size                      = "64"
  type                      = "pd-balanced"
  zone                      = "us-central1-a"
}
