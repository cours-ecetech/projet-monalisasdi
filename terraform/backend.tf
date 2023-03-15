terraform {
  backend "s3" {
    bucket = "microservice-project-2023-tfstate"
    ##==> Replace <prenom> by your firstname and <nom> by your lastname
    key                         = "monalisasaadi.tfstate"
    region                      = "fr-par"
    endpoint                    = "https://s3.fr-par.scw.cloud"
    skip_credentials_validation = true
    skip_region_validation      = true
  }
}
