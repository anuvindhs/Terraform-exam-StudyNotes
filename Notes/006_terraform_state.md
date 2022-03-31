##  Terraform state file - `terraform.tfstate` 
- track your resources state.
- identify the changes and othe details about the deployed infrastucture is shown in this file
- json format
- sensitive file 
- can be kept in remote storage place (example: - S3)



- tracked and stored in `terraform.tfstate` 
- `terraform.tfstate.backup` is a backup file
- helps to detect drift
- `terraform refresh` - helps to find drift
- store state in local and can setup to store in remote like s3
- remote state is more secure
- terrform state can be locked and locks by default by terraform locally