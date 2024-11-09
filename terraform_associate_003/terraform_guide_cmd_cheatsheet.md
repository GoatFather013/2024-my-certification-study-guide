# Terraform Commands Guide

This guide provides an overview of commonly used Terraform commands, along with their options/flags and detailed descriptions.

---

## terraform init

### Explantion

Initializes a working directory containing Terraform configuration files. This command prepares the directory by downloading and installing provider plugins and setting up the backend.

**Usage**
```bash
terraform  init 
```

### Options

- -input=false:  **Disables  interactive  input  during  the  init  process.**
- -backend=false:  **Skips  backend  initialization  if  backend  configuration  is  unnecessary.**

-----

## terraform validate

### Explantion

Validates the syntax and structure of Terraform configuration files without checking for correctness in terms of infrastructure state.
terraform validate

**Usage**
```bash
terraform  validate
```

### Options
- -json: **Outputs the validation result in JSON format for easier integration with automation tools.**

---