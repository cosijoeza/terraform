resource "google_compute_disk" "tfer--us-west2-a-002F-steve-ocpp-test-server" {
  image                     = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-1804-bionic-v20201116"
  name                      = "steve-ocpp-test-server"
  physical_block_size_bytes = "4096"
  project                   = "meta-altar-265823"
  provisioned_iops          = "0"
  size                      = "10"
  type                      = "pd-standard"
  zone                      = "us-west2-a"
}
