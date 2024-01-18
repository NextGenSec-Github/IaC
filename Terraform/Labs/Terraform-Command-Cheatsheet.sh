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

# Destroy the Terraform-managed infrastructure, without prompting for confirmation
terraform destroy -auto-approve

# Force unlock the Terraform state
terraform force-unlock <lock-id>

# Initialize a Terraform configuration from a module
terraform get

# Enable detailed logging of Terraform commands
TF_LOG=DEBUG terraform <command>

# Output the state as machine-readable JSON for further processing
terraform show -json

# Enable the experimental language server for enhanced features
TF_CLI_ARGS="-plugin-dir=<custom_plugin_directory>" terraform init

# Show the differences between the configuration and actual resources
terraform diff

# Output the configuration in JSON format
terraform show -json

# Apply a plan with auto-approval and without prompting
terraform apply -auto-approve

# Import existing infrastructure and create Terraform configuration
terraform import aws_instance.example i-instanceid123

# Clean up Terraform-managed infrastructure and local state
terraform destroy -auto-approve && rm -rf .terraform terraform.tfstate*

# Generate a Markdown documentation of the Terraform configuration
terraform-docs markdown table .

# Display Terraform provider versions
terraform version -json

# List all available Terraform providers
terraform providers

# Upgrade providers to the latest versions
terraform init -upgrade

#!/bin/bash

# Additional Terraform Commands

# Print Terraform help
terraform --help

# Display detailed information about a resource
terraform state show <resource_type.resource_name>

# Generate documentation for the Terraform configuration
terraform-docs markdown .

# Enable the "input" mode for a plan (prompting for input variables)
terraform apply -input=true

# Format Terraform configuration files
terraform fmt

# Initialize a backend for Terraform configuration
terraform init -backend-config=backend.tfvars

# Show the list of subcommands provided by a given command
terraform -help <command>

# Output the current Terraform version
terraform version

# Enable detailed logging of provider communication
TF_LOG_PROVIDER=DEBUG terraform <command>

# Enable colorized output for Terraform commands
export TF_CLI_ARGS="-no-color"
terraform <command>

# Set Terraform variables interactively
terraform console

# Show a visual representation of Terraform dependencies
terraform graph | dot -Tpng > dependencies.png

# Fetch and install the providers and modules needed for the configuration
terraform get

# Initialize and upgrade the configuration in the current directory
terraform init -upgrade

# Validate configuration files and check for syntax errors
terraform validate

# Import existing infrastructure and generate Terraform configuration
terraform import aws_instance.example i-instanceid123


# Show the dependency graph of Terraform resources
terraform graph | dot -Tpng > graph.png
