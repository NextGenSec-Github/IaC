# Terraform Lesson: Terraform State Considerations

We've gained insights into the significance and advantages of Terraform state. Now, let's delve into essential considerations when dealing with Terraform state.

## State as the Single Source of Truth

Terraform state stands as the single source of truth for understanding the deployed infrastructure in the real world. It encapsulates crucial details about provisioned resources, including configurations, attributes, and dependencies.

## Sensitive Information in State

One crucial consideration is that the state file contains sensitive information. For instance, an AWS EC2 instance state file includes details like CPU allocation, memory, operating system, IP address, SSH key, and more. This data is vital for resource management but needs secure handling.

```json
// Example snippet of an AWS EC2 instance state file
{
  "instance_type": "t2.micro",
  "allocated_cpus": 1,
  "memory": 1024,
  "operating_system": "Linux",
  "ip_address": "203.0.113.10",
  "ssh_key": "example_key"
  // ... other attributes
}
```

## Secure Storage for State

When using local state, the information is stored in plain-text JSON files. Given the sensitive nature, it is imperative to ensure the state file resides in a secure storage location. For team collaboration, best practices involve storing Terraform configuration files in version control systems like GitHub, GitLab, or Bitbucket. However, the state file should be stored in remote backends like AWS S3, Google Cloud Storage, Azure Storage, or Terraform Cloud.

