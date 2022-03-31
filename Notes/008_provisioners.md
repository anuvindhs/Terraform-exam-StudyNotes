
## Provisioners

run script **locally** or on **remote resources**

There are Two type of Provisioners
- **Create-time** , run when resource creation 
- **Destroy-time** , run when resource distruction 
  

Best Practice
- if there is a inherent waty to pass the script by public cloud provider , use that.
- terraform cannot track through state files.


if the script running pn a resource fails it `taint` the resource and re-provission on next `terraform apply`.

[Official Documentation](https://www.terraform.io/language/resources/provisioners/syntax)

 - example 

```
resource "null_resource" "mk" {
  provisioner "local-exec" {
    command = "echo '0' > status.txt"
  }
  provisioner "local-exec" {
     # this runs only during when destroy   
    when    = destroy
    command = "echo '1' > status.txt"
  }
}
```

