data "terraform_remote_state" "random_pet" {
  backend = "atlas"

  config {
    name = "chavo4/random_pet_remote"
  }
}

resource "random_pet" "name" {
 length    = "4"
 separator = "-"
}