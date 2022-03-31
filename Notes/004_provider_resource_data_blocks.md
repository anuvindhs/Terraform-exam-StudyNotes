## provider block

aws , google , azure

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


## resource block

```
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
```

call it by `resource.aws_vpc.example`

## data block
```
data "aws_ami" "web" {
  provider = aws.west

  # ...
}
```
you can call it  by `data.aws_ami.web`


terrform will look for providers first while excuting the **.tf** files in the folder.

