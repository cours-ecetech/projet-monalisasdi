terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.2.3"
    }
  }
  required_version = ">= 0.13"
}

provider "scaleway" {
  project_id = "68610bfa-b10a-4a8f-9720-195c930e0e0c"
  zone       = "fr-par-1"
  region     = "fr-par"
}

provider "local" {

}
