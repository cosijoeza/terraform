resource "google_project_iam_custom_role" "tfer--projects-002F-meta-altar-265823-002F-roles-002F-TerraformerRole" {
  description = "Role for terraformer service"
  permissions = ["storage.buckets.getIamPolicy", "storage.objects.getIamPolicy"]
  project     = "meta-altar-265823"
  role_id     = "TerraformerRole"
  stage       = "GA"
  title       = "Terraformer Role"
}
