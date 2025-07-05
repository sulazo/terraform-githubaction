# ---------------------------------------------
# Specify the provider Terraform should use
# ---------------------------------------------
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"   # The provider plugin source
      version = "~> 2.0"            # Use version 2.x of the local provider
    }
  }
}

# ---------------------------------------------
# Initialize the local provider
# This allows Terraform to manage local files
# ---------------------------------------------
provider "local" {}

# ---------------------------------------------
# Create a simple file on the local machine
# ---------------------------------------------
resource "local_file" "hello_world" {
  filename = "hello.txt"                           # Name of the file to create
  content  = "Hello, world from Terraform!!"        # Text to write inside the file
}
