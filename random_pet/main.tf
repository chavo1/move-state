# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

resource "random_pet" "name" {
 length    = "4"
 separator = "-"
}

resource "github_repository" "random_pet" {
  name        = "${random_pet.name.id}"
  description = "pet project"
}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello ${random_pet.name.id}"
  }
}
