# 🚀 FastAPI Service - DevOps Assessment

This repository contains the **FastAPI** application, containerized and deployed on **AWS ECS Fargate**. 

## 🌐 Live Application
You can interact with the live API and its documentation here:  
🔗 [Live Swagger UI](http://fastapi-fargate-alb-1453230624.us-east-1.elb.amazonaws.com/docs)

## 📸 Project Architecture
The following diagram illustrates the cloud infrastructure and data flow for this deployment:

<p align="center">
  <img width="100%" src="https://github.com/user-attachments/assets/80ceb870-daa9-40b5-89ae-fc88812ed3f3" alt="Architecture Diagram">
</p>

---

## 🏗️ Infrastructure as Code (IaC)
The entire environment (VPC, ECS, ALB, etc.) was provisioned using **Terraform**. The infrastructure code is decoupled from the application logic and maintained in a separate repository.

🔗 **View Infrastructure Code:** [mohiuddin1221/Terraform](https://github.com/mohiuddin1221/Terraform)

---

## 🛠️ Tech Stack & Key Features
*   **Language:** Python (FastAPI)
*   **Containerization:** Docker (Multi-stage build)
*   **Orchestration:** AWS ECS Fargate (Serverless)
*   **Infrastructure:** Terraform (Modular Design)
*   **Networking:** Custom VPC with Public & Private Subnets
*   **Database:** Neon DB (PostgreSQL)

---

## 🚀 Deployment Workflow
1.  **Containerize:** Application is built into a Docker image.
2.  **IaC:** Terraform sets up the network, security groups, and ECS cluster.
3.  **Run:** The image is deployed to Fargate behind an Application Load Balancer.

