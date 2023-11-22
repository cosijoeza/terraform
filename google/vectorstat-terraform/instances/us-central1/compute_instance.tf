resource "google_compute_instance" "tfer--vectorstat" {
  boot_disk {
    auto_delete = "true"
    device_name = "vectorstat"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/zones/us-central1-a/disks/maint-server"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-standard-4"

  metadata = {
    ssh-keys = "maintserver:ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAgmqMBqcp2+zmwmc1ZbyWq+WuPZvQX13HpFXzWgsnwnGdcTJbhN8ssFhYK4RGn1b5IL/xKx59ot09WwbwC0apo5iKh9a9bWKDTzKQgRSQgfNYjDd/z0Db0W7UdPtf005rBOkn4QKDV9UeuR+DClane1fGnfB20zklJUvCh0KCmzvKcD78qFnOOllel309kZ03KhgE2NcLK/cDv/UMP4SKzell2/z80VsDIy1Yyxq88c/ViTVVyDDYZI/iFI2jNMCN67qrKtzRBeYwH3LQClmF0inaey9XcjoDh5hcfuvrdVFZKv/7e6zmk+KEIn/UWKBYAixXtRIKr6lXyfu9USFUOQ== maintserver\ncicd:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCIhWzAplB7QSRupuDa9LB6wSuZUoajCH77sj/iucinbi5u1/wpwmcf9M/sjYWGJ/B8qOcfsfM+SsYYKHk3iX8c7wYV6Gbirp+lAwXHtB6CQp3Ps45RSFmgneiGt+ngGvaV5vOuQgpZ+ZdxKvVcKqrixEKBr0PRvGpIzKd87k0HaV3qIiB4CNhlY0SW6DIjXqClzIkNUj3y4oQXX1g/JFC9DXlwjdRg1LK+KnPjR6MXWttfB59MexeiFh7bCi2ywgYynE6FHR7pncQXXIML45rXWDxWbR+xUWUbVL4MRTstmhkEy4udXmhX4mt9ZGsxHGUTh/ZRzjpFTktCkMIZdZEN cicd"
  }

  name = "vectorstat"

  network_interface {
    access_config {
      nat_ip       = "35.239.109.76"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
    network_ip         = "10.128.0.2"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/regions/us-central1/subnetworks/default"
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

  tags = ["allow-ws", "filebeat", "http", "https-server", "kibana-ui", "maint-server-insecure", "maint-server-secure", "nebula", "postgres"]
  zone = "us-central1-a"
}

resource "google_compute_instance" "tfer--vectorstat-api" {
  boot_disk {
    auto_delete = "true"
    device_name = "vectorstat-api"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/zones/us-central1-a/disks/vectorstat-api"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-medium"

  metadata = {
    ssh-keys = "user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHFL+j4YMXc6SxiF2PR+hw9utYJ1F4EU8QaNkEPTmbv866cod7+/Q8aJ20X0gxXZgT7Rn1ukF1d3U1JgL/gxNXnUbl5Ih4yqL5R7t0GdBmHxvM45+PZ9rSQ3+5aS+0mnrD0LJkK+STM9n70cxbZTONIJkOw+HDuUMOPUACGiFiYjmGZ/Rkk+hiiDE7vaumwbOAdIChXdAZYewwVzz0zOoN+uaFOryF7gs5EpOUXhDfbfoJ1TS39SUEts7JGY0PWaH+xFJPQZpUdxJlxBmCLbGwraxhwAXgEV+8gS5ZnoUoaHQ10NWlhJkhd2W3ZdTJoDPiCC69z+NxnBRN4camk9ST user"
  }

  name = "vectorstat-api"

  network_interface {
    access_config {
      nat_ip       = "34.121.124.57"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
    network_ip         = "10.128.0.6"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/regions/us-central1/subnetworks/default"
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

  tags = ["http", "http-server", "https-server"]
  zone = "us-central1-a"
}

resource "google_compute_instance" "tfer--vectorstat-dev" {
  advanced_machine_features {
    enable_nested_virtualization = "false"
    threads_per_core             = "2"
  }

  boot_disk {
    auto_delete = "true"
    device_name = "vectorstat-dev"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/zones/us-central1-a/disks/vectorstat-dev"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-standard-4"

  metadata = {
    ssh-keys = "maintserver:ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAgmqMBqcp2+zmwmc1ZbyWq+WuPZvQX13HpFXzWgsnwnGdcTJbhN8ssFhYK4RGn1b5IL/xKx59ot09WwbwC0apo5iKh9a9bWKDTzKQgRSQgfNYjDd/z0Db0W7UdPtf005rBOkn4QKDV9UeuR+DClane1fGnfB20zklJUvCh0KCmzvKcD78qFnOOllel309kZ03KhgE2NcLK/cDv/UMP4SKzell2/z80VsDIy1Yyxq88c/ViTVVyDDYZI/iFI2jNMCN67qrKtzRBeYwH3LQClmF0inaey9XcjoDh5hcfuvrdVFZKv/7e6zmk+KEIn/UWKBYAixXtRIKr6lXyfu9USFUOQ== maintserver\ncicd:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCIhWzAplB7QSRupuDa9LB6wSuZUoajCH77sj/iucinbi5u1/wpwmcf9M/sjYWGJ/B8qOcfsfM+SsYYKHk3iX8c7wYV6Gbirp+lAwXHtB6CQp3Ps45RSFmgneiGt+ngGvaV5vOuQgpZ+ZdxKvVcKqrixEKBr0PRvGpIzKd87k0HaV3qIiB4CNhlY0SW6DIjXqClzIkNUj3y4oQXX1g/JFC9DXlwjdRg1LK+KnPjR6MXWttfB59MexeiFh7bCi2ywgYynE6FHR7pncQXXIML45rXWDxWbR+xUWUbVL4MRTstmhkEy4udXmhX4mt9ZGsxHGUTh/ZRzjpFTktCkMIZdZEN cicd\nluis.j:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDyd35tDq/lvx5u1KfqF9/pR8r0YHiC22ycPts83phydTnxWI/35/I392+LkJHdjni5HwBWNLRFyXcJ97FGEy7m79nfLmd61qh80N8u/TMG0IYePwEQm82jcrOpH7UMHQYvL6mxdjyFjF9BWMaNxbkMwNkjUIjmc7h71cGS0+WXXJ4Tq+DSKOx0I/5yt/fR8x2VOTtyERL5AzlR0NTD9HyC9jZE3se93s02z5HH4thrT240e4npU6wXuP2LWxdDCNPIWhE7Iqf8Nx+9OoeMU/DDQ1FzdtM0nN6e/E7aS+1/LR5ib0L9sSNBoppELB2M+XTSqfi1FHT1FIvE2E4+lE3fKdT/zFwa9BHOZ7Q3q58sScTJV5k0FtCKZtcoOosW73iOsNiFXB3hbuJJJfIR2jG81IpNJXxbgntWFVPbZLgLQQcnnjs5NcClldl7xEkMj4dfDHfiIBjrjYXkM3ILfWWcdyrSWvOdHVCS/hipx+zJPpN3oToRgyizXkqJ3JkNcp0= luis.j@datyra.com\nluis_j:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJ9HMYOmsPFBrspDUxsQiJ2EA6uMJFzeT6zSAx6nWvaWeOHtftjsMKZsGYaIig7lAhx8A/YHGvSeUJP9yACx9c8= google-ssh {\"userName\":\"luis.j@datyra.com\",\"expireOn\":\"2023-02-14T17:41:42+0000\"}"
  }

  name = "vectorstat-dev"

  network_interface {
    access_config {
      nat_ip       = "34.136.177.253"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
    network_ip         = "10.128.0.3"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/regions/us-central1/subnetworks/default"
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

  tags = ["allow-ws", "filebeat", "http", "https-server", "kibana-ui", "maint-server-insecure", "maint-server-secure", "postgres"]
  zone = "us-central1-a"
}

resource "google_compute_instance" "tfer--vectorstat-int" {
  boot_disk {
    auto_delete = "true"
    device_name = "vectorstat-int"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/zones/us-central1-a/disks/vectorstat-int"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-standard-4"

  metadata = {
    ssh-keys = "maintserver:ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAgmqMBqcp2+zmwmc1ZbyWq+WuPZvQX13HpFXzWgsnwnGdcTJbhN8ssFhYK4RGn1b5IL/xKx59ot09WwbwC0apo5iKh9a9bWKDTzKQgRSQgfNYjDd/z0Db0W7UdPtf005rBOkn4QKDV9UeuR+DClane1fGnfB20zklJUvCh0KCmzvKcD78qFnOOllel309kZ03KhgE2NcLK/cDv/UMP4SKzell2/z80VsDIy1Yyxq88c/ViTVVyDDYZI/iFI2jNMCN67qrKtzRBeYwH3LQClmF0inaey9XcjoDh5hcfuvrdVFZKv/7e6zmk+KEIn/UWKBYAixXtRIKr6lXyfu9USFUOQ== maintserver\ncicd:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCIhWzAplB7QSRupuDa9LB6wSuZUoajCH77sj/iucinbi5u1/wpwmcf9M/sjYWGJ/B8qOcfsfM+SsYYKHk3iX8c7wYV6Gbirp+lAwXHtB6CQp3Ps45RSFmgneiGt+ngGvaV5vOuQgpZ+ZdxKvVcKqrixEKBr0PRvGpIzKd87k0HaV3qIiB4CNhlY0SW6DIjXqClzIkNUj3y4oQXX1g/JFC9DXlwjdRg1LK+KnPjR6MXWttfB59MexeiFh7bCi2ywgYynE6FHR7pncQXXIML45rXWDxWbR+xUWUbVL4MRTstmhkEy4udXmhX4mt9ZGsxHGUTh/ZRzjpFTktCkMIZdZEN cicd"
  }

  name = "vectorstat-int"

  network_interface {
    access_config {
      nat_ip       = "34.68.95.130"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/global/networks/default"
    network_ip         = "10.128.0.4"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/meta-altar-265823/regions/us-central1/subnetworks/default"
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

  tags = ["allow-ws", "filebeat", "http", "https-server", "kibana-ui", "maint-server-insecure", "maint-server-secure", "postgres"]
  zone = "us-central1-a"
}
