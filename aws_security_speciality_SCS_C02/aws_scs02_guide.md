# AWS Security Competencies and Domains

This README outlines the key domains and competencies for AWS security practices, following Version 1.1 SCS-C02 specifications. The guide provides an overview of required skills and knowledge across different security areas, focusing on edge security, network security, compute security, identity and access management, data protection, and governance.

---

## Table of Contents

1. **Edge Security Strategies**
2. **Network Security Controls**
3. **Compute Security**
4. **Identity and Access Management (IAM)**
5. **Data Protection**
6. **Management and Security Governance**

---

## 1. Edge Security Strategies

### Skills:
- Define edge security strategies for applications, including public websites, serverless apps, and mobile backends.
- Choose edge services based on threat models (e.g., OWASP Top 10, DDoS attacks).
- Implement defense-in-depth strategies by layering services (e.g., CloudFront, AWS WAF).
- Apply restrictions at the edge (e.g., geography, rate limits).
- Activate logs, metrics, and monitoring to detect attacks.

---

## 2. Network Security Controls

### Knowledge:
- Understand VPC security mechanisms (security groups, network ACLs, Network Firewall).
- Implement secure Inter-VPC and on-premises connectivity (e.g., Transit Gateway, AWS Direct Connect).
- Leverage telemetry sources (e.g., VPC Flow Logs, Traffic Mirroring).

### Skills:
- Implement network segmentation and control traffic using security groups and ACLs.
- Ensure data remains off the public internet (e.g., using Transit Gateway).
- Adjust network configurations based on evolving security requirements.

---

## 3. Compute Security

### Knowledge:
- Provision and maintain EC2 instances (patching, snapshots, AMIs).
- Manage IAM roles for instances and services.
- Utilize services for vulnerability scanning (e.g., Amazon Inspector).

### Skills:
- Harden EC2 AMIs, scan instances for vulnerabilities, and secure credentials.
- Patch compute workloads, activate host-based security, and analyze findings.

---

## 4. Identity and Access Management (IAM)

### Task Statement 4.1: **Authentication**

#### Knowledge:
- Methods for identity creation (e.g., federated identities, IAM Identity Center, Amazon Cognito).
- Credentialing mechanisms (e.g., temporary credentials, multi-factor authentication).

#### Skills:
- Implement MFA, manage temporary credentials, and troubleshoot authentication issues.

### Task Statement 4.2: **Authorization**

#### Knowledge:
- Different IAM policies (managed, inline, resource-based, session control).
- Policy components (e.g., Principal, Action, Resource, Condition).

#### Skills:
- Construct and implement access control models (ABAC, RBAC).
- Apply least privilege principles and separate duties.

---

## 5. Data Protection

### Task Statement 5.1: **Data in Transit**

#### Knowledge:
- TLS, VPN, secure remote access (e.g., SSH, Session Manager).
- TLS certificate application across AWS resources.

#### Skills:
- Design encrypted connectivity and require encryption for AWS services.

### Task Statement 5.2: **Data at Rest**

#### Knowledge:
- Select encryption techniques (symmetric, asymmetric).
- Design policies to control access and protect data integrity.

#### Skills:
- Prevent unauthorized access, configure encryption at rest, and use integrity-protection mechanisms.

### Task Statement 5.3: **Data Lifecycle Management**

#### Knowledge:
- Lifecycle policies and retention standards.

#### Skills:
- Automate lifecycle management for data retention and backup.

---

## 6. Management and Security Governance

### Task Statement 6.1: **AWS Accounts Management**

#### Knowledge:
- Multi-account strategies, policy-defined guardrails, root account best practices.

#### Skills:
- Deploy AWS Organizations, implement SCPs, secure root credentials, aggregate security findings.

### Task Statement 6.2: **Deployment Strategy**

#### Knowledge:
- Infrastructure as Code best practices, centralized deployment, and resource tagging.

#### Skills:
- Securely deploy resources with CloudFormation, enforce tagging, and manage Firewall policies.

### Task Statement 6.3: **Compliance**

#### Knowledge:
- Data classification and audit practices.

#### Skills:
- Use AWS Config rules to monitor compliance and manage sensitive data.

---