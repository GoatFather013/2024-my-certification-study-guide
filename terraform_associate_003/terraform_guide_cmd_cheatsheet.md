# Terraform Commands Guide

This guide provides an overview of commonly used Terraform commands, along with their options/flags and detailed descriptions.

---

## terraform init

### Explantion

Initializes a working directory containing Terraform configuration files. This command prepares the directory by downloading and installing provider plugins and setting up the backend.

**Usage**
```bash
terraform init 
```

### Options

- -input=false:  **Disables  interactive  input  during  the  init  process.**
- -backend=false:  **Skips  backend  initialization  if  backend  configuration  is  unnecessary.**

---

## terraform validate

### Explantion

Validates the syntax and structure of Terraform configuration files without checking for correctness in terms of infrastructure state.

**Usage**
```bash
terraform validate
```

### Options
- -json: **Outputs the validation result in JSON format for easier integration with automation tools.**

---

## terraform plan

### Explantion

Generates an execution plan, showing what actions Terraform will take to reach the desired state. It doesn’t apply changes but allows you to preview them.

**Usage**
```bash
terraform plan
```

### Options
- -out=plan.out: **Saves the plan to a file for later execution.** 
- -var='key=value': **Sets a variable’s value from the command line.**

---

## terraform apply

### Explantion

Applies the changes specified by the execution plan to achieve the desired infrastructure state. By default, it asks for confirmation before making changes.

**Usage**
```bash
terraform apply
```

### Options
- -auto-approve: **Skips the confirmation prompt, applying changes immediately.**
- -var-file="file.tfvars": **Loads variable definitions from a .tfvars file.**

---

## terraform destroy

### Explantion

Deletes all infrastructure resources defined in the configuration, effectively dismantling the setup created by Terraform.

**Usage**
```bash
terraform destroy
```

### Options
- -auto-approve: **Skips the confirmation prompt, immediately proceeding with resource deletion.**
- -target="resource_type.resource_name": **Deletes only specified resources, preserving the rest.**

---

## terraform format

### Explantion

Formats Terraform configuration files according to standard conventions, ensuring consistency across the codebase.

**Usage**
```bash
terraform fmt
```

### Options
- -recursive: **Applies formatting to files in subdirectories as well.**

---