resource "google_compute_instance" "tfer--steve-ocpp-test-server" {
  boot_disk {
    auto_delete = "true"
    device_name = "steve-ocpp-test-server"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/zones/us-west2-a/disks/steve-ocpp-test-server"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-micro"

  metadata = {
    ssh-keys = "rhombusenergysolutions:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBGKzKrth5DbaGNqv2f5VMb8WTuUYrnBmqcIaG8BMDHN7kvRaXjoy59qb3PTdMveUhLH5N79bco80wS0PdyL0H/s= google-ssh {\"userName\":\"rhombusenergysolutions@gmail.com\",\"expireOn\":\"2023-04-19T17:24:42+0000\"}\nrhombusenergysolutions:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCExfYwrf7vb0yuVleo/cY86CIVYpxA4aQqbroGOlglX38X2MbpaJi8wdygwNY30z2O2PJQO/tsOhKBxBULbAFPK+V6bFDurF7sGbN85QQ+R1ynYlV8aH7IIMkSKr8MoaVifz7Sl/GRXGb63J8wbk5jB8i9KSU4Pj5QeP7Lnz4Z2p0o0GVwSTLZYcDWbJozA3dw8yEELcfg21lq4kEf/yY7U5m67ku5dQ/VBKfYvN6Ui7oRlAc9rDH5URabZhNtBnyv/2+ihdWdAkgXohhAf5dGFyOkGmJaEuR0VR2jXOyghz+oL8tlbRh39/obyr7k0Lfe7UeiYj5/wHiblVeUrCOj google-ssh {\"userName\":\"rhombusenergysolutions@gmail.com\",\"expireOn\":\"2023-04-19T17:24:57+0000\"}\nrhombusenergysolutions:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJboJRglzLZ9TfU6SfYFUchCwrjwZ7XUigRQKWFlW+FmGGR6/dM7QU7uaPs5WIOAB2Lw1FfH9YKrlBz8lu0a85o= google-ssh {\"userName\":\"rhombusenergysolutions@gmail.com\",\"expireOn\":\"2023-04-19T17:25:34+0000\"}\nrhombusenergysolutions:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCGiofal4Zqy3JmCsccYFG1IkPz5IBPXpPQj6JmVulmJiBVrJxHTsEh4nhDiFU7fQ8Yd673L6PxL9RHH5zaZ0ic2WerY7d+Nrkv0YxI2jO0lbD+4imeXfdh9+Xl8531eKYDMMG49m2iQBohDLaaIHtkSnLALq5GKyqSfYd4x342aJ56t3cae3DZi6HUrLuPjYNR70sk7e+5eKzfIEI0aSEF9COutYwu5nBg0vKLbr7YV1ED26KIAdwvFBNjS1RuBQyyhQ92hpsMSs82/nzNM34rADBcABSDZs7z+gmSOiYUEna0/WkZPRzJoNUfXQVJH9LRC5VcHDd75eWVB5PYFTPf google-ssh {\"userName\":\"rhombusenergysolutions@gmail.com\",\"expireOn\":\"2023-04-19T17:25:49+0000\"}\nrhombusenergysolutions:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBELMjaqngYb7JaJVC9VKqS+dnzh8jRYlfqs/LkxgIu5NrZG98WXfhCktJfVgGibb8JY0Fd2xWIkZyydQp+vgTCE= google-ssh {\"userName\":\"rhombusenergysolutions@gmail.com\",\"expireOn\":\"2023-04-19T17:26:52+0000\"}\nrhombusenergysolutions:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCz5IdtgHNSB1pcmRPONCrVBwIt4NIuUYreiZYyH15yRQt3ZR6NnWoDIRfe8uoM0lLZrrZ2OfMT7zEmFzRpT25+7xflpTzUKunBdf+uFyup8W0QSmibwzHwr/XQdnW+7PC437PZSYs2n5PFmHDbjCDbiX8q7dDDzpoQV36R4WUcDLprMKKArtjF4TEioPFSFdwl+R+x/zKi7MXb3955FXwMcSgm0smtj4gdiF2BYrUj/yZUfVed/wfAKtT6byKIkX4rAixeqvMM22VAm+pM+Gz56HRJwxzTtfU5Bd14Slu1H+PkxOdHj2akt5S/eFR7M+F13byVyOaMshG8jjHXNTCP google-ssh {\"userName\":\"rhombusenergysolutions@gmail.com\",\"expireOn\":\"2023-04-19T17:27:07+0000\"}"
  }

  name = "steve-ocpp-test-server"

  network_interface {
    access_config {
      nat_ip       = "34.94.124.114"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
    network_ip         = "10.168.0.2"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/regions/us-west2/subnetworks/default"
    subnetwork_project = "meta-altar-265823"
  }

  project = "meta-altar-265823"

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = "true"
    min_node_cpus       = "0"
    on_host_maintenance = "MIGRATE"
    preemptible         = "false"
  }

  service_account {
    email  = "69775928864-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  tags = ["http-server", "https-server"]
  zone = "us-west2-a"
}
