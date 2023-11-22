# Vectorstat (meta-altar-265823) in Terraform

This project contains the first version of the Terraform code for
the Vectorstat GCP project (meta-altar-265823).

The Terraform code was generated from the Vectorstat GCP project using
[Terraformer](https://github.com/GoogleCloudPlatform/terraformer)

## About Terraform

HashiCorp Terraform is an infrastructure as code tool that lets you define
both cloud and on-prem resources in human-readable configuration files that
you can version, reuse, and share.

Terraform creates and manages resources on cloud platforms and other services
through their application programming interfaces (APIs). Providers enable
Terraform to work with virtually any platform or service with an accessible API.

## Requirements:

- Ubuntu or macOS
- Terraform (v1.4.0)
- Gcloud CLI (v437.0.0)
- Terraformer (v0.8.24)
- Google provider for Terraform (v4.0.0)

## Get GCP project as Terraform code

Get an existing project in Terraform code using Terraformer. Terraformer is a
CLI tool that generates tf/json and tfstate files based on existing
infrastructure (reverse Terraform).The current Terraform code was generated
[following this tutorial](https://github.com/GoogleCloudPlatform/terraformer/blob/master/docs/gcp.md).

## Initialize Terraform configuration

The core Terraform workflow consists of three main steps after you have written
your Terraform configuration:

- `terraform init` prepares your workspace so Terraform can apply
your configuration.
- `terraform plan` allows you to preview the changes Terraform will
make before you apply them.
- `terraform apply` makes the changes defined by your plan to create,
update, or destroy resources.

The project is structured in different folders, grouped by service and region
(`{service}/{region}`). Each folder contains its own tfstate file. Go into a
folder, initializate the Terraform configuration and check the status of the
infrastructure.

```bash
cd {service}/{region}
terraform init
terraform status
```

## References
- [Terraform in GitHub](https://github.com/elastic/beats).
- [Terraformer in GitHub](https://github.com/GoogleCloudPlatform/terraformer).