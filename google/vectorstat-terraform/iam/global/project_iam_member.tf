resource "google_project_iam_member" "tfer--projects-002F-meta-altar-265823-002F-roles-002F-TerraformerRoleserviceAccount-003A-vectorstat-terraformer-0040-meta-altar-265823-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:vectorstat-terraformer@meta-altar-265823.iam.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "projects/meta-altar-265823/roles/TerraformerRole"
}

resource "google_project_iam_member" "tfer--roles-002F-cloudasset-002E-serviceAgentserviceAccount-003A-service-69775928864-0040-gcp-sa-cloudasset-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-69775928864@gcp-sa-cloudasset.iam.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/cloudasset.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-cloudbuild-002E-builds-002E-builderserviceAccount-003A-69775928864-0040-cloudbuild-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:69775928864@cloudbuild.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/cloudbuild.builds.builder"
}

resource "google_project_iam_member" "tfer--roles-002F-cloudbuild-002E-serviceAgentserviceAccount-003A-service-69775928864-0040-gcp-sa-cloudbuild-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-69775928864@gcp-sa-cloudbuild.iam.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/cloudbuild.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-cloudsql-002E-clientuser-003A-guluartev-0040-gmail-002E-com" {
  member  = "user:guluartev@gmail.com"
  project = "meta-altar-265823"
  role    = "roles/cloudsql.client"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-serviceAgentserviceAccount-003A-service-69775928864-0040-compute-system-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-69775928864@compute-system.iam.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/compute.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-container-002E-serviceAgentserviceAccount-003A-service-69775928864-0040-container-engine-robot-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-69775928864@container-engine-robot.iam.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/container.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-containerregistry-002E-ServiceAgentserviceAccount-003A-service-69775928864-0040-containerregistry-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-69775928864@containerregistry.iam.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/containerregistry.ServiceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-editorserviceAccount-003A-vectorstat-terraform-sa-0040-meta-altar-265823-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:vectorstat-terraform-sa@meta-altar-265823.iam.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-editoruser-003A-armando-0040-datyra-002E-com" {
  member  = "user:armando@datyra.com"
  project = "meta-altar-265823"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-editoruser-003A-emmanuel-0040-datyra-002E-com" {
  member  = "user:emmanuel@datyra.com"
  project = "meta-altar-265823"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-editoruser-003A-luis-002E-j-0040-datyra-002E-com" {
  member  = "user:luis.j@datyra.com"
  project = "meta-altar-265823"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-editoruser-003A-oscar-0040-datyra-002E-com" {
  member  = "user:oscar@datyra.com"
  project = "meta-altar-265823"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-editoruser-003A-victor-0040-datyra-002E-com" {
  member  = "user:victor@datyra.com"
  project = "meta-altar-265823"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-firebaserules-002E-systemserviceAccount-003A-service-69775928864-0040-firebase-rules-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-69775928864@firebase-rules.iam.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/firebaserules.system"
}

resource "google_project_iam_member" "tfer--roles-002F-iam-002E-roleAdminuser-003A-armando-0040-datyra-002E-com" {
  member  = "user:armando@datyra.com"
  project = "meta-altar-265823"
  role    = "roles/iam.roleAdmin"
}

resource "google_project_iam_member" "tfer--roles-002F-iam-002E-securityAdminuser-003A-armando-0040-datyra-002E-com" {
  member  = "user:armando@datyra.com"
  project = "meta-altar-265823"
  role    = "roles/iam.securityAdmin"
}

resource "google_project_iam_member" "tfer--roles-002F-logging-002E-logWriterserviceAccount-003A-69775928864-compute-0040-developer-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:69775928864-compute@developer.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/logging.logWriter"
}

resource "google_project_iam_member" "tfer--roles-002F-owneruser-003A-k-0040-datyra-002E-com" {
  member  = "user:k@datyra.com"
  project = "meta-altar-265823"
  role    = "roles/owner"
}

resource "google_project_iam_member" "tfer--roles-002F-owneruser-003A-keith-002E-klarer-0040-gmail-002E-com" {
  member  = "user:keith.klarer@gmail.com"
  project = "meta-altar-265823"
  role    = "roles/owner"
}

resource "google_project_iam_member" "tfer--roles-002F-pubsub-002E-serviceAgentserviceAccount-003A-service-69775928864-0040-gcp-sa-pubsub-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-69775928864@gcp-sa-pubsub.iam.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/pubsub.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-source-002E-adminuser-003A-armando-0040-datyra-002E-com" {
  member  = "user:armando@datyra.com"
  project = "meta-altar-265823"
  role    = "roles/source.admin"
}

resource "google_project_iam_member" "tfer--roles-002F-storage-002E-objectAdminserviceAccount-003A-69775928864-compute-0040-developer-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:69775928864-compute@developer.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/storage.objectAdmin"
}

resource "google_project_iam_member" "tfer--roles-002F-viewerserviceAccount-003A-vectorstat-terraformer-0040-meta-altar-265823-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:vectorstat-terraformer@meta-altar-265823.iam.gserviceaccount.com"
  project = "meta-altar-265823"
  role    = "roles/viewer"
}

resource "google_project_iam_member" "tfer--roles-002F-vieweruser-003A-cosi-0040-datyra-002E-com" {
  member  = "user:cosi@datyra.com"
  project = "meta-altar-265823"
  role    = "roles/viewer"
}
