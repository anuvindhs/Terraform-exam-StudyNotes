## Terraform State
- Real world resources mapped to terraform code locally
- default Stored locally named `terraforms.tfstate`
- checks the state before modification.
- metadata tracked via .tfstate


### Terraform command
- State Management
- `terraform state list` - helps to list all resources.
- `terraform state rm` - delete a resource from state file to untrack or unmanage. (resource will not be removed when you run `terraform destroy`)
- `terraform state show` - shows details of a resource.
  