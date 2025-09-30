# terraform-azure-blob-storage

A reusable Terraform module to create **Azure Storage Account** and **Blob Containers**.

## Features
- Create an Azure Storage Account with configurable tier and replication
- Create multiple Blob Containers
- Optional creation of a Resource Group
- Supports tags and container access control

## Usage

```hcl
module "blob_storage" {
  source = "git::https://github.com/Karthikn-VR/terraform-azure-blob-storage.git?ref=v1.0.0"

  resource_group_name     = "rg-demo"
  create_resource_group   = true
  location                = "East US"
  storage_account_name    = "myuniquestorage123"
  containers              = ["logs", "data", "backups"]
  container_access_type   = "private"

  tags = {
    environment = "dev"
    project     = "iac-demo"
  }
}
