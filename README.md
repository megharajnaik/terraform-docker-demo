# Terraform Docker Demo

This project demonstrates **Infrastructure as Code (IaC)** using **Terraform** to provision a local Docker container running **Nginx**.

---

## Prerequisites

- Terraform >= 1.0  
- Docker Desktop installed and running  
- PowerShell (Windows) or any terminal  
- Git (optional, for version control)

---

## Steps to Run

1. **Navigate to project folder**:

powershell
cd C:\Terraform
Initialize Terraform:

powershell
Copy code
terraform init
Preview changes:

powershell
Copy code
terraform plan
Apply the configuration:

powershell
Copy code
terraform apply
Type yes to confirm.

Nginx container will run on port 8081.

Verify:

powershell
Copy code
docker ps
Open http://localhost:8081 in a browser.

Inspect Terraform state (optional):

powershell
Copy code
terraform state list
terraform state show docker_container.nginx
Destroy infrastructure when done:

powershell
Copy code
terraform destroy -auto-approve
Project Files
main.tf — Terraform configuration.

execution_logs.txt — Terraform command outputs.

README.md — Project documentation.
