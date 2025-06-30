# Terraform AWS Free Tier Infrastructure – Multi-Environment Setup
---

## 👋 Introduction
This project is a Proof of Concept (POC) for setting up a secure, automated AWS Landing Zone using Terraform and GitHub Actions — entirely within AWS Free Tier limits.

Fully automated
Uses Infrastructure as Code (IaC)
Supports pre-production and production environments
CI/CD pipeline deploys on GitHub push

📁 Project Structure

trproject/
├── modules/
│   ├── compute/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── logging/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── envs/
│   ├── pre-prod/
│   │   ├── main.tf
│   │   ├── provider.tf
│   │   ├── backend.tf
│   │   ├── variables.tf
│   │   └── terraform.tfvars
│   │
│   └── prod/
│       ├── main.tf
│       ├── provider.tf
│       ├── backend.tf
│       ├── variables.tf
│       └── terraform.tfvars
│
├── .github/
│   └── workflows/
│       └── terraform.yml
│                
└── README.md

🌍 Landing Zone Architecture
Pre-Prod
1 VPC
1 Public Subnet
1 EC2 t2.micro instance
Internet Gateway
Security Group
GitHub Actions deploys on pre-prod branch

Production
1 VPC
2 Public Subnets
2 EC2 t2.micro instances
Internet Gateway
Security Group
Centralized logging:
VPC Flow Logs → S3 + CloudWatch Logs
GitHub Actions deploys on pull requests on prod branch

| Command           | Purpose                          |
| ----------------- | -------------------------------- |
| `terraform init`  | Initialize providers and backend |
| `terraform plan`  | Show changes before applying     |
| `terraform apply` | Deploy infrastructure            |

🚀 GitHub Actions CI/CD
.github/workflows/terraform.yml
On pre-prod branch push:
Deploys to envs/pre-prod using its backend
On prod branch push:
Deploys to envs/prod using its backend

### 🔐 GitHub → AWS Authentication

This project uses **GitHub Actions Secrets** to authenticate with AWS during CI/CD workflows. The AWS access credentials (`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`) are securely stored in the repository’s GitHub Secrets and injected as environment variables into the Terraform workflow.

This ensures that no sensitive credentials are exposed in the codebase, while allowing GitHub Actions to safely deploy and manage AWS infrastructure.




