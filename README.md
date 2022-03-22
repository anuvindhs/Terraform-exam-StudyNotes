## workspaces
- used for multipple work environments
- like dev-test-prod
- Check  `terraform workspace -help`


## file structre 
- main.tf
- variables.tf 
- outputs.tf 

## terraform state

- tracked and stored in `terraform.tfstate` 
- `terraform.tfstate.backup` is a backup file
- in json 
- helps to detect drift
- `terraform refresh` - helps to find drift
- store state in local and can setup to store in remote like s3
- remote state is more secure
- terrform state can be locked and locks by default by terraform locally


## providers
- used to provision IAC to Public cloud

## terraform CLI
-  all os

## VS Code
-  Extention - HashiCorp Terraform, Terraform doc snippets

## Configuring Terraform with AWS 

**One**
-  Not a good practice but one way of doing it

```

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

provider "aws" {
    region = "ap-southeast-2"
    aceess_key= ""
    secert_key = ""
}

```

**Two**

- Use IAM Programatic access with least privilage access
- then configure 


**Three**
```
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-west-2"
$ terraform plan
```
**Four**
```
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

provider "aws" {
    profile = "default"
  region = "ap-southeast-2"
}
```

## Terraform CLI Sub-Commands

```bash
terraform -help
```

**Main commands:**

  `init`          - Prepare your working directory for other commands.
  `validate`      - Check whether the configuration is valid / Making sure     syntax is correct.
  `plan`         - Show changes required by the current configuration / lets us know what terraform will do with the script .
  `apply`         - Create or update infrastructure/ deploy Infrastucture.
  `destroy`      - Destroy previously-created infrastructure.
</br>
**All other commands:**

  `console` - an interactive command prompt.
  `fmt`    - Reformat your configuration in the standard style.
  `output` - output values from your root module.
  `force-unlock`  Release a stuck lock on the current workspace.
  `get`          Install or upgrade remote Terraform modules.
  `graph`         Generate a Graphviz graph of the steps in an operation.
  `import`        Associate existing infrastructure with a Terraform resource.
  `login`         Obtain and save credentials for a remote host.
  `logout`        Remove locally-stored credentials for a remote host.
  `providers`    Show the providers required for this configuration.
  `refresh`       Update the state to match remote systems.
  `show`         Show the current state or a saved plan.
  `state`         Advanced state management.
  `taint`         Mark a resource instance as not fully functional.
  `test`         Experimental support for module integration testing.
  `untaint`       Remove the 'tainted' state from a resource instance.
  `version`       Show the current Terraform version.
  `workspace`     Workspace management.

</br>
Global options (use these before the subcommand, if any):
  -chdir=DIR    Switch to a different working directory before executing the
                given subcommand.
  -help         Show this help output, or the help for a specified subcommand.
  -version      An alias for the "version" subcommand.


**Output Folder structure** `tree .terraform`

## Terraform Launage

### Syntax
HCL



### How resources provisioned 
`<resource> <type> <name>`

```hcl
resource "aws_vpc" "name"{

} 
```

Priority of variables terraform