# AWS Security Speciality Guide intro
This README outlines the key domains and competencies for AWS security practices, following Version 1.1 SCS-C02 specifications. The guide provides an overview of required skills and knowledge across different security areas, focusing on edge security, network security, compute security, identity and access management, data protection, and governance.

## My Thoughts on the Exam

### Why I Took the Exam

For years, I've worked with AWS services, and I wanted to elevate my knowledge to the next level.  
Here is what I learned in preparation for the exam:

- Config, GuardDuty, Security Hub, and EventBridge are awesome.
- Be sure to automate everything.
- The Well-Architected Framework and the Shared Responsibility Model are key.
- Kinesis has a lot more functions than I previously thought.
- Everything must be encrypted.
- AWS is going through a lot of annoying name changes.
- If you need to block something, do it at the organizational level.
- Don't confuse resources, identities, boundaries, sessions, and SCPs with each other.

### About the Exam

The exam was easier than I had imagined. It is 180 minutes long, or 210 if you request ESL, and consists of 65 multiple-gamble questions.  
Keep in mind that 15 questions are not used for your overall score. You won't know which questions these are, but they are essentially worthless. (Annoying, I know.)

To pass the exam, you need to score at least 750 out of 1000 points.  
I spent around 100 minutes on the exam and ended up with 862 points.

### Exam tips:
Before you take the exam, I suggest improving your reading skills. Many questions are big scenarios with 4–6 answer options.  
Being able to read quickly and interpret the information will give you an edge during the exam.

Be sure to carefully read the exam questions and look for the operator words.  
There can be trick questions like:

*You need to be able to use API tokens in a dynamic, secure, and COST EFFECTIVE way:*  
The first thing you should think is: *"Hey, that sounds like Secrets Manager."*  
But Secrets Manager costs money, so SSM Secure Parameter could be the correct answer to the question.

### ESL +30

If English is your second language, you can request the "ESL +30."  
This gives you an extension of 30 minutes. (Extra time, whoopee!)

To do this, follow these steps:

1. Sign in to [AWS Training and Certification](https://aws.training/Certification).
2. Select the **Go to your Account** button.
3. Select the **Request Exam Accommodations** button, followed by **Request Accommodation**.
4. Using the **Accommodation Type** dropdown, select **ESL +30 MINUTES**.
5. Select the **Create** button.

---

## AWS Security Competencies and Domains

### Table of Contents

1. **Edge Security Strategies**
2. **Network Security Controls**
3. **Compute Security**
4. **Identity and Access Management (IAM)**
5. **Data Protection**
6. **Management and Security Governance**

---

### 1. Edge Security Strategies

#### Skills:
- Define edge security strategies for applications, including public websites, serverless apps, and mobile backends.
- Choose edge services based on threat models (e.g., OWASP Top 10, DDoS attacks).
- Implement defense-in-depth strategies by layering services (e.g., CloudFront, AWS WAF).
- Apply restrictions at the edge (e.g., geography, rate limits).
- Activate logs, metrics, and monitoring to detect attacks.

---

### 2. Network Security Controls

#### Knowledge:
- Understand VPC security mechanisms (security groups, network ACLs, Network Firewall).
- Implement secure Inter-VPC and on-premises connectivity (e.g., Transit Gateway, AWS Direct Connect).
- Leverage telemetry sources (e.g., VPC Flow Logs, Traffic Mirroring).

#### Skills:
- Implement network segmentation and control traffic using security groups and ACLs.
- Ensure data remains off the public internet (e.g., using Transit Gateway).
- Adjust network configurations based on evolving security requirements.

---

### 3. Compute Security

#### Knowledge:
- Provision and maintain EC2 instances (patching, snapshots, AMIs).
- Manage IAM roles for instances and services.
- Utilize services for vulnerability scanning (e.g., Amazon Inspector).

#### Skills:
- Harden EC2 AMIs, scan instances for vulnerabilities, and secure credentials.
- Patch compute workloads, activate host-based security, and analyze findings.

---

### 4. Identity and Access Management (IAM)

#### Task Statement 4.1: **Authentication**

##### Knowledge:
- Methods for identity creation (e.g., federated identities, IAM Identity Center, Amazon Cognito).
- Credentialing mechanisms (e.g., temporary credentials, multi-factor authentication).

##### Skills:
- Implement MFA, manage temporary credentials, and troubleshoot authentication issues.

#### Task Statement 4.2: **Authorization**

##### Knowledge:
- Different IAM policies (managed, inline, resource-based, session control).
- Policy components (e.g., Principal, Action, Resource, Condition).

##### Skills:
- Construct and implement access control models (ABAC, RBAC).
- Apply least privilege principles and separate duties.

---

### 5. Data Protection

#### Task Statement 5.1: **Data in Transit**

##### Knowledge:
- TLS, VPN, secure remote access (e.g., SSH, Session Manager).
- TLS certificate application across AWS resources.

##### Skills:
- Design encrypted connectivity and require encryption for AWS services.

#### Task Statement 5.2: **Data at Rest**

##### Knowledge:
- Select encryption techniques (symmetric, asymmetric).
- Design policies to control access and protect data integrity.

##### Skills:
- Prevent unauthorized access, configure encryption at rest, and use integrity-protection mechanisms.

#### Task Statement 5.3: **Data Lifecycle Management**

##### Knowledge:
- Lifecycle policies and retention standards.

##### Skills:
- Automate lifecycle management for data retention and backup.

---

### 6. Management and Security Governance

#### Task Statement 6.1: **AWS Accounts Management**

##### Knowledge:
- Multi-account strategies, policy-defined guardrails, root account best practices.

##### Skills:
- Deploy AWS Organizations, implement SCPs, secure root credentials, aggregate security findings.

#### Task Statement 6.2: **Deployment Strategy**

##### Knowledge:
- Infrastructure as Code best practices, centralized deployment, and resource tagging.

##### Skills:
- Securely deploy resources with CloudFormation, enforce tagging, and manage Firewall policies.

#### Task Statement 6.3: **Compliance**

##### Knowledge:
- Data classification and audit practices.

##### Skills:
- Use AWS Config rules to monitor compliance and manage sensitive data.

---

## Additional Resources

### Courses
- **[Udemy: Ultimate AWS Certified Security Specialty [NEW 2024] SCS-C02](https://www.udemy.com/course/ultimate-aws-certified-security-specialty)**
- **[A Cloud Guru: AWS Certified Security – Specialty (SCS-C02)](https://learn.acloud.guru/course/aws-certified-security-specialty-scs-c01)**

### Practice Exams
- **[Udemy: Practice Exams | AWS Certified Security – Specialty](https://www.udemy.com/course/practice-exams-aws-certified-security-specialty)**
- **[AWS Skillsbuilder: Exam Prep Official Practice Question Set: AWS Certified Security - Specialty](https://explore.skillbuilder.aws/learn/course/15222/exam-prep-official-practice-question-set-aws-certified-security-specialty-scs-c02-english)**
- **[AWS Skillsbuilder: Exam Prep Official Practice Exam: AWS Certified Security - Specialty](https://explore.skillbuilder.aws/learn/course/15719/exam-prep-official-practice-exam-aws-certified-security-specialty-scs-c02-english)**
- **A Cloud Guru: AWS Certified Security – Specialty (SCS-C02) (Included in the course)**

### Labs
- **[AWS Skillsbuilder: Introduction to AWS Identity and Access Management (IAM)](https://explore.skillbuilder.aws/learn/course/880/introduction-to-aws-identity-and-access-management-iam)**
- **[AWS Skillsbuilder: Zero Trust Architecture for Service-to-Service Workload](https://explore.skillbuilder.aws/learn/course/15502/zero-trust-architecture-for-service-to-service-workload)**
- **[AWS Skillsbuilder: Controlling the Network](https://explore.skillbuilder.aws/learn/course/13606/controlling-the-network)**
- **[AWS Skillsbuilder: Troubleshooting - IAM Access Issues](https://explore.skillbuilder.aws/learn/course/16281/lab-troubleshooting-iam-access-issues)**
- **[AWS Skillsbuilder: Troubleshooting IAM Access Issues (Assessment Version)](https://explore.skillbuilder.aws/learn/course/19397/lab-troubleshooting-iam-access-issues-assessment-version)**
- **[AWS Skillsbuilder: Secure Your Account During an Active Event](https://explore.skillbuilder.aws/learn/course/14742/secure-your-account-during-an-active-event)**
- **[AWS Skillsbuilder: AWS Security Traffic Monitoring and Packet Analysis](https://explore.skillbuilder.aws/learn/course/15900/aws-security-traffic-monitoring-and-packet-analysis)**
- **[AWS Skillsbuilder: Performing a Basic Audit of your AWS Environmen](https://explore.skillbuilder.aws/learn/course/885/performing-a-basic-audit-of-your-aws-environment)**
- **[AWS Skillsbuilder: Threat Hunting with AWS Network Firewall Deployment](https://explore.skillbuilder.aws/learn/course/15954/threat-hunting-with-aws-network-firewall-deployment)**
- **[AWS Skillsbuilder: Auditing Your Security with AWS Trusted Advisor](https://explore.skillbuilder.aws/learn/course/887/auditing-your-security-with-aws-trusted-advisor)**
- **[AWS Skillsbuilder: My Bucket, My Rules](https://explore.skillbuilder.aws/learn/course/14743/my-bucket-my-rules)**
- **[AWS Skillsbuilder: Filtering and blocking web incursions with AWS WAF](https://explore.skillbuilder.aws/learn/course/11363/filtering-and-blocking-web-incursions-with-aws-waf)**
- **[AWS Skillsbuilder: Scale Your Security Vulnerability Testing with Amazon Inspector](https://explore.skillbuilder.aws/learn/course/7686/scale-your-security-vulnerability-testing-with-amazon-inspector)**
- **[AWS Skillsbuilder: Securing the Endpoint](https://explore.skillbuilder.aws/learn/course/14176/securing-the-endpoint)**
- **[AWS Skillsbuilder: Using Data Encryption in AWS](https://explore.skillbuilder.aws/learn/course/11357/using-data-encryption-in-aws)**
- **[AWS Skillsbuilder: Security Monitoring](https://explore.skillbuilder.aws/learn/course/13814/security-monitoring)**
- **[AWS Skillsbuilder: Role Assumption Challenge](https://explore.skillbuilder.aws/learn/course/1133/role-assumption-challenge)**
- **[AWS Skillsbuilder: Introduction to AWS Key Management Service](https://explore.skillbuilder.aws/learn/course/897/introduction-to-aws-key-management-service)**
- **A Cloud Guru: AWS Certified Security – Specialty (SCS-C02) (Included in the course)**

### Sources
*None*

### Time Spent
*60 hours*