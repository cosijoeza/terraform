resource "google_compute_network" "tfer--default" {
  auto_create_subnetworks         = "true"
  delete_default_routes_on_create = "false"
  description                     = "Default network for the project"
  mtu                             = "0"
  name                            = "default"
  project                         = "meta-altar-265823"
  routing_mode                    = "REGIONAL"
}
