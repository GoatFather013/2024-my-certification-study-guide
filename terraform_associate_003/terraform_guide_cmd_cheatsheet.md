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

## terraform import

Imports existing infrastructure resources into Terraform, adding them to the state file so they can be managed by Terraform.

**Usage**
```bash
terraform import <resource_type.resource_name> <resource_id>
```

**Usage**
```bash
terraform import aws_instance.example i-1234567890abcdef0
```

---

## terraform output

### Explantion

Displays the values of output variables defined in the configuration. Useful for retrieving data from the Terraform state.

**Usage**
```bash
terraform output
```

### Options
- -json: **Outputs data in JSON format.**
- -raw: **Returns the raw string value of the output without quotation marks.**

---

## terraform state

### Explantion

Manages and inspects the state file, which tracks resources managed by Terraform.

**Usage**
```bash
terraform state <subcommand>
```

### Subcommands
- list **List resources in the state**
- mv **Move an item in the state**
- pull **Pull current state and output to stdout**
- push **Update remote state from a local state file**
- replace-provider **Replace provider in the state**
- rm **Remove instances from the state**
- show **Show a resource in the state**

---