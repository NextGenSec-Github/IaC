# TERRAFORM COMMAND CHEATSHEET

# Initialize a Terraform working directory
terraform init

# Create an execution plan
terraform plan

# Apply changes to the infrastructure
terraform apply

# Destroy Terraform-managed infrastructure
terraform destroy

# Show the current state or a saved plan
terraform show

# Output the execution plan to a file
terraform plan -out=tfplan

# Apply a pre-existing plan
terraform apply tfplan

# Refresh the state to update remote state references
terraform refresh

# Validate configuration files
terraform validate

# Import existing infrastructure into Terraform
terraform import <Terraform Resource> <Resource ID>

# Output values from the Terraform state
terraform output

# View Terraform state
terraform state list
terraform state show <resource_type.resource_name>

# Lock the state for exclusive operations
terraform state lock <lock-id>

# Unlock the state for exclusive operations
terraform state unlock <lock-id>

# Upgrade provider versions in the configuration
terraform init -upgrade

# Clean up and remove local Terraform settings and cache
terraform version -clean

