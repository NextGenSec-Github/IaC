# Output Variables

In Terraform, Output Variables allow you to expose specific values from your infrastructure deployment that can be useful for external systems or users. These values are typically the results of resource creations or computed information.

## Why Output Variables?

- **External Consumption:** Output variables are a way to share information with other Terraform configurations or external systems.

- **Visibility:** They provide a clear and organized way to display important information about your infrastructure.

## How to Declare Output Variables

To declare an output variable in your Terraform configuration, use the `output` block. Here's a basic example:

```hcl
output "instance_ip" {
  value = aws_instance.example.public_ip
}
```
In this example, we're exposing the public IP address of an AWS EC2 instance.

## Retrieving Output Values

Once you apply your Terraform configuration, you can retrieve the values of output variables using the terraform output command:

```bash
terraform output instance_ip
```
This command will display the value of the instance_ip variable.

## Use Case: Retrieving Output in Another Configuration

You can reference output values from one Terraform configuration in another by using the terraform_remote_state data source.

```hcl
data "terraform_remote_state" "other_config" {
  backend = "s3"
  config = {
    bucket = "other-config-bucket"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  
  # Other resource configurations...

  associate_public_ip_address = true
}

output "other_instance_ip" {
  value = data.terraform_remote_state.other_config.outputs.instance_ip
}
```

In this example, we're retrieving the instance_ip output variable from another Terraform configuration stored in an S3 bucket.

# Remember, output variables enhance the modularity and reusability of your Terraform code, providing a clean way to share information across deployments.





