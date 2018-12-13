terraform {
  backend "atlas" {
    name = "chavo4/random_pet_remote"
    address = "https://app.terraform.io" # optional
  }
}

resource "random_pet" "name" {
 length    = "4"
 separator = "-"
}
