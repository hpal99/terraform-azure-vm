# Terraform Azure VM - Nginx Setup

This project provisions a **Linux virtual machine on Azure**, installs **Nginx via cloud-init**, and sets up networking using **Terraform**.

---

## 📦 Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- An Azure subscription
- SSH key pair (e.g., `~/.ssh/id_rsa.pub`)

---

## 🔐 Authenticate with Azure

```bash
az login

## Make sure you're on the correct subscription:
az account show
az account set --subscription "<your-subscription-name-or-id>"

⚙️ Initialize & Apply Terraform Configuration
#Step 1: Clone the Repository

git clone https://github.com/hpal99/terraform-azure-vm.git
cd terraform-azure-vm
#Step 2: Initialize Terraform
terraform init
#Step 3: Preview the Changes
terraform plan
#Step 4: Apply the Configuration
terraform apply
(Type yes when prompted)


📁 File Overview
| File               | Description                                                                                               |
| ------------------ | --------------------------------------------------------------------------------------------------------- |
| `main.tf`          | Declares the Azure provider, resource group, virtual network, subnet, NIC, public IP, and virtual machine |
| `variables.tf`     | Defines input variables like region, resource group name, VM size, etc.                                   |
| `terraform.tfvars` | Stores actual values for the variables (e.g., SSH key path, VM name)                                      |
| `outputs.tf`       | Displays useful output info after apply (e.g., public IP address)                                         |
| `.gitignore`       | Prevents sensitive files like `.terraform/`, `*.tfstate` from being committed                             |
| `README.md`        | You're reading it — setup instructions & project info                                                     |

🌐 Access Nginx in Browser
After successful deployment, get the public IP:terraform output public_ip

Open your browser and visit:http://<public-ip>

🔁 Destroy the Resources
terraform destroy