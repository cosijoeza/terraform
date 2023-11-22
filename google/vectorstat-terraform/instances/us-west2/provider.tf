provider "google" {
  project = "meta-altar-265823"
}

terraform {
	required_providers {
		google = {
	    version = "~> 4.0.0"
		}
  }
}
