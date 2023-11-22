#public_subnet  = "10.10.0.0/24"
#private_subnet = "10.10.1.0/24"
virginia_cidr = "10.10.0.0/16"
subnets       = ["10.10.0.0/24", "10.10.1.0/24"]
tags = {
  "env"         = "dev"
  "owner"       = "Cosijoeza"
  "cloud"       = "AWS"
  "IAC"         = "Terraform"
  "IAC_Version" = "1.6.2"
}
