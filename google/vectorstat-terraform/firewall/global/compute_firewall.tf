resource "google_compute_firewall" "tfer--allow-ws" {
  allow {
    ports    = ["8001"]
    protocol = "tcp"
  }

  allow {
    ports    = ["8001"]
    protocol = "udp"
  }

  description   = "Allow incoming websocket connections"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "allow-ws"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "1000"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-ws"]
}

resource "google_compute_firewall" "tfer--default-allow-http" {
  allow {
    ports    = ["8080"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-http"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "1000"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}

resource "google_compute_firewall" "tfer--default-allow-https" {
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-https"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "1000"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["https-server"]
}

resource "google_compute_firewall" "tfer--default-allow-icmp" {
  allow {
    protocol = "icmp"
  }

  description   = "Allow ICMP from anywhere"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-icmp"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "65534"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "tfer--default-allow-internal" {
  allow {
    ports    = ["0-65535"]
    protocol = "tcp"
  }

  allow {
    ports    = ["0-65535"]
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  description   = "Allow internal traffic on the default network"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-internal"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "65534"
  project       = "meta-altar-265823"
  source_ranges = ["10.128.0.0/9"]
}

resource "google_compute_firewall" "tfer--default-allow-rdp" {
  allow {
    ports    = ["3389"]
    protocol = "tcp"
  }

  description   = "Allow RDP from anywhere"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-rdp"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "65534"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "tfer--default-allow-ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  description   = "Allow SSH from anywhere"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "65534"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "tfer--filebeat" {
  allow {
    ports    = ["9200"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "filebeat"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "1000"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["filebeat"]
}

resource "google_compute_firewall" "tfer--http" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "http"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "1000"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http"]
}

resource "google_compute_firewall" "tfer--kibana-ui" {
  allow {
    ports    = ["5602"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "kibana-ui"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "1000"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["kibana-ui"]
}

resource "google_compute_firewall" "tfer--maint-server-insecure" {
  allow {
    ports    = ["8084"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "maint-server-insecure"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "1000"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["maint-server-insecure"]
}

resource "google_compute_firewall" "tfer--maint-server-secure" {
  allow {
    ports    = ["8184"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "maint-server-secure"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "1000"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["maint-server-secure"]
}

resource "google_compute_firewall" "tfer--nebula" {
  allow {
    ports    = ["4242"]
    protocol = "tcp"
  }

  allow {
    ports    = ["4242"]
    protocol = "udp"
  }

  description   = "nebula vpn"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "nebula"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "1000"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["nebula"]
}

resource "google_compute_firewall" "tfer--postgres" {
  allow {
    ports    = ["5432"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "postgres"
  network       = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
  priority      = "1000"
  project       = "meta-altar-265823"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["postgres"]
}
