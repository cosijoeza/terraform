resource "google_compute_address" "tfer--vectorstat" {
  address       = vars.address[0]
  address_type  = "EXTERNAL"
  name          = "vectorstat"
  network_tier  = "PREMIUM"
  prefix_length = "0"
  project       = "meta-altar-265823"
  region        = "us-central1"
}

resource "google_compute_address" "tfer--vectorstat-api" {
  address       = vars.address[1]
  address_type  = "EXTERNAL"
  name          = "vectorstat-api"
  network_tier  = "PREMIUM"
  prefix_length = "0"
  project       = "meta-altar-265823"
  region        = "us-central1"
}

resource "google_compute_address" "tfer--vectorstat-build" {
  address       = vars.address[2]
  address_type  = "EXTERNAL"
  name          = "vectorstat-build"
  network_tier  = "PREMIUM"
  prefix_length = "0"
  project       = "meta-altar-265823"
  region        = "us-central1"
}

resource "google_compute_address" "tfer--vectorstat-dev" {
  address       = vars.address[3]
  address_type  = "EXTERNAL"
  name          = "vectorstat-dev"
  network_tier  = "PREMIUM"
  prefix_length = "0"
  project       = "meta-altar-265823"
  region        = "us-central1"
}

resource "google_compute_address" "tfer--vectorstat-int" {
  address       = vars.address[4]
  address_type  = "EXTERNAL"
  name          = "vectorstat-int"
  network_tier  = "PREMIUM"
  prefix_length = "0"
  project       = "meta-altar-265823"
  region        = "us-central1"
}
