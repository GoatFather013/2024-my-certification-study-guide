# Terraform Learning Guide

## 1. Understand Infrastructure as Code (IaC) Concepts

### 1a. Explain what IaC is
Infrastructure as Code (IaC) is the practice of managing and provisioning infrastructure through code rather than through manual processes.

### 1b. Describe advantages of IaC patterns
IaC enables consistency, repeatability, and version control for infrastructure management, allowing for easier automation, reduced errors, and improved scalability.

## 2. Understand the Purpose of Terraform (vs Other IaC)

### 2a. Explain multi-cloud and provider-agnostic benefits
Terraform supports multi-cloud environments and is provider-agnostic, enabling infrastructure management across various cloud providers with a single configuration.

### 2b. Explain the benefits of state
Terraform state helps track infrastructure changes over time, supports collaboration, and optimizes resource management through tracking dependencies.

## 3. Understand Terraform Basics

### 3a. Install and version Terraform providers
Providers in Terraform manage specific types of resources. Proper installation and versioning ensure compatibility with the Terraform configuration.

### 3b. Describe plugin-based architecture
Terraform uses a plugin-based architecture where providers are separate plugins that communicate with APIs to manage resources.

### 3c. Write Terraform configuration using multiple providers
Terraform can handle multiple providers within a configuration to manage resources across different platforms.

### 3d. Describe how Terraform finds and fetches providers
Terraform retrieves providers from Terraform Registry or other configured sources, ensuring the correct provider versions are used.

## 4. Use Terraform Outside the Core Workflow

### 4a. Describe when to use `terraform import` to import existing infrastructure into your Terraform state
Use `terraform import` to incorporate existing infrastructure that wasn't initially managed by Terraform.

### 4b. Use `terraform state` to view Terraform state
The `terraform state` command allows viewing and managing the state of resources.

### 4c. Describe when to enable verbose logging and what the outcome/value is
Verbose logging in Terraform provides detailed information about operations, aiding in troubleshooting and auditing.

## 5. Interact with Terraform Modules

### 5a. Contrast and use different module source options including the public Terraform Module Registry
Modules can be sourced from the Terraform Registry, local paths, Git, or other repositories.

### 5b. Interact with module inputs and outputs
Modules use inputs to receive values and outputs to pass data to other parts of the configuration.

### 5c. Describe variable scope within modules/child modules
Variables in modules are isolated by default, limiting scope unless explicitly passed between modules.

### 5d. Set module version
Module versions allow specific versions of modules to be used, ensuring consistency and avoiding unexpected changes.

## 6. Use the Core Terraform Workflow

### 6a. Describe Terraform workflow (Write -> Plan -> Create)
The core Terraform workflow consists of writing code, planning changes, and applying them to manage infrastructure.

### 6b. Initialize a Terraform working directory (`terraform init`)
The `terraform init` command initializes the working directory, setting up provider plugins and downloading dependencies.

### 6c. Validate a Terraform configuration (`terraform validate`)
Use `terraform validate` to ensure that the configuration is syntactically correct and ready for further actions.

### 6d. Generate and review an execution plan for Terraform (`terraform plan`)
`terraform plan` shows what changes Terraform will make to achieve the desired state.

### 6e. Execute changes to infrastructure with Terraform (`terraform apply`)
The `terraform apply` command applies the planned changes to infrastructure.

### 6f. Destroy Terraform managed infrastructure (`terraform destroy`)
`terraform destroy` removes all infrastructure managed by the current Terraform configuration.

### 6g. Apply formatting and style adjustments to a configuration (`terraform fmt`)
`terraform fmt` automatically formats code according to Terraform standards.

## 7. Implement and Maintain State

### 7a. Describe default local backend
Terraform’s default backend is local, storing the state file on the local filesystem.

### 7b. Describe state locking
State locking prevents concurrent operations on a Terraform state, avoiding conflicts and errors.

### 7c. Handle backend and cloud integration authentication methods
Terraform supports multiple authentication methods for backends, enhancing security for cloud integrations.

### 7d. Differentiate remote state back end options
Remote state allows sharing the state file among team members, with options including cloud and other storage backends.

### 7e. Manage resource drift and Terraform state
Resource drift occurs when actual infrastructure changes outside of Terraform. Drift detection helps align state with real infrastructure.

### 7f. Describe backend block and cloud integration in configuration
The backend block configures state storage, including cloud integration for remote backends.

### 7g. Understand secret management in state files
Secrets within state files should be handled securely to prevent sensitive information exposure.

## 8. Read, Generate, and Modify Configuration

### 8a. Demonstrate use of variables and outputs
Variables allow for flexible configuration, and outputs provide data from one module to others.

### 8b. Describe secure secret injection best practice
Secure secret injection involves methods to keep sensitive data safe, such as using environment variables or secret management tools.

### 8c. Understand the use of collection and structural types
Collection types (lists, maps) and structural types help manage complex data structures within configurations.

### 8d. Create and differentiate resource and data configuration
Resource blocks define actual infrastructure resources, while data sources provide information about existing resources.

### 8e. Use resource addressing and resource parameters to connect resources together
Resource addressing and parameters help connect and organize resources in configurations.

### 8f. Use HCL and Terraform functions to write configuration
HashiCorp Configuration Language (HCL) and Terraform functions enable the creation of flexible and dynamic configurations.

### 8g. Describe built-in dependency management (order of execution based)
Terraform automatically handles dependencies between resources, determining execution order.

## 9. Understand HCP Terraform Capabilities

### 9a. Explain how HCP Terraform helps to manage infrastructure
HashiCorp Cloud Platform (HCP) Terraform provides managed Terraform services, improving infrastructure management and scaling.

### 9b. Describe how HCP Terraform enables collaboration and governance
HCP Terraform supports collaboration, policy management, and governance, enhancing team workflows and compliance.

---

## Additional Resources

### Courses:
*(To be added)*

### Practice Exams:
- [Terraform Associate Practice Exam on Udemy](https://www.udemy.com/course/terraform-associate-practice-exam/)

### Time Spend:
*(To be added)*