# Terraform Azure VM

This project uses Terraform to provision a Linux virtual machine on Microsoft Azure.

## 🛠 Prerequisites

- Terraform installed
- Azure CLI installed and logged in
- An SSH key pair (e.g., `~/.ssh/id_rsa.pub`)
- Azure subscription with sufficient permissions

## 📁 Files

- `main.tf` – VM and networking resources
- `variables.tf` – Input variable definitions
- `terraform.tfvars` – (Optional) Variable values
- `outputs.tf` – Outputs like public IP
- `.gitignore` – Excludes sensitive/local files

## 🚀 How to Use

```bash
# 1. Initialize
terraform init

# 2. Preview changes
terraform plan

# 3. Apply the infrastructure
terraform apply
