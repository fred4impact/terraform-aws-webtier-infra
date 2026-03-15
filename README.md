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
