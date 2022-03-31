## Modules

- Container which have codes for reusability.
  
### How to?
- refer from public terraform library.
- can host private registery.
- can store locally and reference.
- can provide outputs if configured to main block.

- **example**  for a terraform-aws-modules from terraform registry.

    ```
    module "ec2_instances" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.12.0"

  name           = "my-ec2-cluster"
  instance_count = 2

  ami                    = "ami-0c5204531f799e0c6"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.vpc.default_security_group_id]
  subnet_id              = module.vpc.public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "dev"
     }
    }
    ```
