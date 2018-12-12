# Example Terraform Move state


## Clone the repo

```
git clone https://github.com/chavo1/move-state.git
cd move-state/sample
```

- Initialise the provider and apply changes
```
terraform init
terraform apply
```
- Move the state of created resource and go to the random_pet directory
```
terraform state mv -state-out=../random_pet/terraform.tfstate random_pet.name random_pet.name
cd ../random_pet
```
- export your ATLAS_TOKEN
```
export ATLAS_TOKEN=<your_atlas_token>
```
- Initialise the provider and apply changes
```
terraform init
terraform apply
```
- The result should as follow:
```
random_pet.name: Refreshing state... (ID: singularly-mainly-engaged-cobra)
data.terraform_remote_state.random_pet: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

- Than destroy the result should be as similar to following:

```
$ terraform destroy
random_pet.name: Refreshing state... (ID: singularly-mainly-engaged-cobra)
data.terraform_remote_state.random_pet: Refreshing state...

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  -destroy

Terraform will perform the following actions:

  -random_pet.name


Plan: 0 to add, 0 to change, 1 to destroy.
```
