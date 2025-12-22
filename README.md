# Terraform

This repository contains Terraform configurations used to provision and manage
AWS cloud resources.

It demonstrates hands-on experience with Terraform for automating cloud
resource creation, ensuring reproducibility, scalability, and consistency
across environments.

---

## Covered AWS Services

The Terraform code in this repository includes configurations related to:

- Amazon EC2
- Amazon S3 as Remote Backend
- DynamoDB table for locking

---

## Tech Stack

- **Terraform** – Infrastructure as Code
- **AWS** – Cloud provider
- **HCL (HashiCorp Configuration Language)**

---

## How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/Kosama1334/Terraform.git
   cd Terraform/{{sub-project-name}}
2. ```bash
    terraform init
3. ```bash
    terraform plan #dry run, check for the resources that would be applied
4. ```bash
    terraform apply
