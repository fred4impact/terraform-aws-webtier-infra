# Bilarn AWS Infrastructure – Terraform

This project provisions a **Highly Available, Secure, and Scalable AWS Infrastructure** using **Terraform modules**.

The infrastructure supports a **3-tier MERN stack application architecture** consisting of:

- **Web Tier (Frontend)** – NGINX + NodeJS frontend
- **Application Tier (Backend)** – NodeJS backend API
- **Database Tier** – MySQL (Amazon RDS)

The platform is designed with **high availability, fault tolerance, and scalability** across **multiple Availability Zones**.

---

# Architecture Overview

The infrastructure is deployed in **AWS us-east-1 across two availability zones**.

### Key Components

| Layer | Components |
|------|------------|
| Networking | VPC, Subnets, Internet Gateway, NAT Gateway, Route Tables |
| Compute | EC2 Instances, Auto Scaling Groups |
| Load Balancing | Application Load Balancer (External & Internal) |
| Database | Amazon RDS MySQL |
| Storage | S3 Buckets |
| Security | Security Groups, IAM Roles |
| Monitoring | VPC Flow Logs |
| Edge | Route53 (optional) |

---

# Infrastructure Diagram

Architecture follows this logical structure:

# to use these modules 
- Create a folder inside the env e.g stage 
- create a main.tf and specify the infra to provision
- create a dev.tfvars and add all teh variables to be used for the infra per the enviroments 

```yaml
aws_region = "us-east-1" # Specify your region

vpc_cidr = "10.0.0.0/16" # Specifify your vpc cidr

azs = [
  "us-east-1a",
  "us-east-1b"
]

public_subnets = [
  "10.0.0.0/24",
  "10.0.1.0/24"
]

app_subnets = [
  "10.0.2.0/24",
  "10.0.3.0/24"
]

db_subnets = [
  "10.0.4.0/24",
  "10.0.5.0/24"
]

code_bucket     = "bilarn-code-bucket"
flowlogs_bucket = "bilarn-flowlogs-bucket"

db_name     = "db_name_"
db_user     = "db_user-name"
db_password = "db_password"

```
