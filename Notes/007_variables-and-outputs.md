 
 ## varibles
examples how variables are declared.

```
variable "availability_zone" {
  type    = string
  default = "us-west-1a"
}
```

```
variable "my-variable"{}
```

- use it separate in `variable.tfvars` file.
- you can add validation during running variables 
- can add `sensitive` to data, its a bool value - `true or false`
  

### Types

#### base types
- string
  - example
   ```
    variable "image_id" {
    type        = string
    description = "The id of the machine image (AMI) to use for the server."
    }
    ```
- number
- bool
  - example
    ```
    variable "user_information" {
      type = object({
        name    = string
        address = string
      })
      sensitive = true  
    }

    resource "some_resource" "a" {
      name    = var.user_information.name
     address = var.user_information.address
    }

    ```
  
#### complex types  

- list
  - example
  ```
  variable "az_names"{
      type = list(string)
      default=["ap-southeast-2"]
  }
  ```

- set
- map
- object 
- tuple
  

## Output

```
output "instance_ip_addr" {
  value = aws_instance.server.private_ip
}
```

- return values from the config file
-  if you declare it, you will get outputs printed acording to the code


