
`terraform fmt`

- Format code for readability
- can run at any time
- doesnot change anything else
  
`terraform taint resource_address`
- marks the resources neeed to be tainted, recreate on next apply.
- Modify only statefile.

`terraform import resource_address_id`  
- import already deployed resources to terraform.

**Terraform configuration block**

```
  terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}

provider "aws" {
  # Configuration options
}
```