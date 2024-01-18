# Terraform Lesson: Output Variables

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

