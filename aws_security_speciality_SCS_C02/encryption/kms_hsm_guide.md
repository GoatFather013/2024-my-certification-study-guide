# AWS KMS vs. AWS CloudHSM

This document explains the key features, use cases, and when to use **AWS Key Management Service (KMS)** and **AWS CloudHSM**, along with links to relevant documentation.

---

## Overview

### **AWS Key Management Service (KMS)**
AWS KMS is a managed service for creating, controlling, and managing cryptographic keys used to protect your data across AWS services and applications. It integrates seamlessly with AWS services, offering centralized key management and auditing capabilities.

### **AWS CloudHSM**
AWS CloudHSM provides dedicated hardware security modules (HSMs) in the AWS Cloud. It enables you to manage your own encryption keys using FIPS 140-2 Level 3 validated HSMs, offering stringent security controls and compliance.

---

## When to Use Each Service

### **When to Use AWS KMS**
- **Managed Key Management:** Minimal management overhead for key creation, rotation, and auditing.
- **Moderate Security Requirements:** Shared responsibility model for key storage and management.
- **Cost Efficiency:** Suitable for budget-conscious encryption needs.
- **Integration:** Seamlessly integrates with AWS services like S3, EBS, and RDS.
- **Auditing and Compliance:** Meets compliance requirements such as PCI DSS, HIPAA, and GDPR.
- **Symmetric and Asymmetric Keys:** Supports both types of keys for general use cases.

### **When to Use AWS CloudHSM**
- **High-Security Requirements:** Full control over encryption keys with no AWS access.
- **Bring Your Own Key (BYOK):** Enables use of your own HSMs for encryption key storage.
- **Custom Cryptographic Applications:** Provides low-level access to HSM APIs.
- **Dedicated Hardware:** Avoid multi-tenancy risks with dedicated HSMs.
- **Integration with External Systems:** Keys are accessible for on-premises or third-party cloud systems.
- **High Throughput Encryption:** Suitable for performance-intensive cryptographic operations.

---

## Key Differences

| Feature                     | AWS KMS                          | AWS CloudHSM                     |
|-----------------------------|-----------------------------------|-----------------------------------|
| **Control Over Keys**       | Limited (AWS manages storage)    | Full (You control the HSM keys)  |
| **Compliance**              | Shared responsibility, supports compliance like PCI DSS, HIPAA | FIPS 140-2 Level 3 |
| **Cost**                    | Low                             | Higher due to dedicated hardware |
| **Performance**             | Moderate                        | High (dedicated HSMs)            |
| **Integration**             | Seamless with AWS services       | Customizable for external systems |
| **Ease of Use**             | High (AWS manages the complexity)| Moderate (requires more setup)   |

---

## Documentation Links

### **AWS Key Management Service (KMS)**
- [Overview of AWS KMS](https://docs.aws.amazon.com/kms/latest/developerguide/overview.html)
- [AWS KMS Keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html)
- [Creating KMS Keys](https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html)
- [Key Policies in AWS KMS](https://docs.aws.amazon.com/kms/latest/developerguide/concepts-intro.html)
- [Rotating AWS KMS Keys](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)

### **AWS CloudHSM**
- [Introduction to AWS CloudHSM](https://docs.aws.amazon.com/cloudhsm/latest/userguide/introduction.html)
- [Getting Started with AWS CloudHSM](https://docs.aws.amazon.com/cloudhsm/latest/userguide/getting-started.html)
- [AWS CloudHSM Clusters](https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html)
- [AWS CloudHSM Use Cases](https://docs.aws.amazon.com/cloudhsm/latest/userguide/use-cases.html)
- [AWS CloudHSM Command Line Interface (CLI)](https://docs.aws.amazon.com/cloudhsm/latest/userguide/cloudhsm_cli.html)

---

## Summary
- **AWS KMS:** Best for ease of use, seamless AWS integration, and cost efficiency.
- **AWS CloudHSM:** Best for complete control, regulatory compliance, and high-security applications.