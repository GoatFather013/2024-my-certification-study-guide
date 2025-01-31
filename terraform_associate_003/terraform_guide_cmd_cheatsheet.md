# Terraform Commands Cheat Sheet
This cheat sheet provides an overview of commonly used Terraform commands, along with their options/flags and detailed descriptions.

---

## `terraform init`
Initializes a working directory containing Terraform configuration files. This command prepares the directory by downloading and installing provider plugins and setting up the backend.

**Usage**
```bash
terraform init
```

**Options**
- `-input=false`: Disables interactive input during the init process.
- `-backend=false`: Skips backend initialization if backend configuration is unnecessary.

---

## `terraform validate`
Validates the syntax and structure of Terraform configuration files without checking for correctness in terms of infrastructure state.

**Usage**
```bash
terraform validate
```

**Options**
- `-json`: Outputs the validation result in JSON format for easier integration with automation tools.

---

## `terraform plan`
Generates an execution plan, showing what actions Terraform will take to reach the desired state. It doesn’t apply changes but allows you to preview them.

**Usage**
```bash
terraform plan
```

**Options**
- `-out=plan.out`: Saves the plan to a file for later execution.
- `-var='key=value'`: Sets a variable’s value from the command line.

---

## `terraform apply`
Applies the changes specified by the execution plan to achieve the desired infrastructure state. By default, it asks for confirmation before making changes.

**Usage**
```bash
terraform apply
```

**Options**
- `-auto-approve`: Skips the confirmation prompt, applying changes immediately.
- `-var-file="file.tfvars"`: Loads variable definitions from a `.tfvars` file.

---

## `terraform destroy`
Deletes all infrastructure resources defined in the configuration, effectively dismantling the setup created by Terraform.

**Usage**
```bash
terraform destroy
```

**Options**
- `-auto-approve`: Skips the confirmation prompt, immediately proceeding with resource deletion.
- `-target="resource_type.resource_name"`: Deletes only specified resources, preserving the rest.

---

## `terraform fmt`
Formats Terraform configuration files according to standard conventions, ensuring consistency across the codebase.

**Usage**
```bash
terraform fmt
```

**Options**
- `-recursive`: Applies formatting to files in subdirectories as well.

---

## `terraform import`
Imports existing infrastructure resources into Terraform, adding them to the state file so they can be managed by Terraform.

**Usage**
```bash
terraform import <resource_type.resource_name> <resource_id>
```

**Example**
```bash
terraform import aws_instance.example i-1234567890abcdef0
```

---

## `terraform output`
Displays the values of output variables defined in the configuration. Useful for retrieving data from the Terraform state.

**Usage**
```bash
terraform output
```

**Options**
- `-json`: Outputs data in JSON format.
- `-raw`: Returns the raw string value of the output without quotation marks.

---

## `terraform state`
Manages and inspects the state file, which tracks resources managed by Terraform.

**Usage**
```bash
terraform state <subcommand>
```

**Common Subcommands**
- `list`: Lists all resources in the state file.
- `rm <resource_name>`: Removes a resource from the state file.
- `show`: Displays details of a resource in the state.

---

## `terraform taint`
Marks a resource as "tainted," indicating that it requires recreation in the next `terraform apply`.

**Usage**
```bash
terraform taint <resource_type.resource_name>
```

---

## `terraform untaint`
Removes the taint from a resource, preventing its recreation.

**Usage**
```bash
terraform untaint <resource_type.resource_name>
```

---

## `terraform show`
Displays detailed information about the last Terraform execution plan or the state file. Useful for inspecting what changes were planned or applied.

**Usage**
```bash
terraform show
```

**Options**
- `-json`: Outputs data in JSON format for easier parsing and integration with other tools.

---

## `terraform graph`
Generates a visual representation of the Terraform resource dependency graph. Output can be used with tools like Graphviz to create a visual diagram.

**Usage**
```bash
terraform graph
```

**Example**
```bash
terraform graph | dot -Tpng > graph.png
```

---

## `terraform workspace`
Manages Terraform workspaces, which allow multiple environments to be managed from the same configuration directory.

**Usage**
```bash
terraform workspace <subcommand>
```

**Common Subcommands**
- `new <workspace_name>`: Creates a new workspace.
- `select <workspace_name>`: Switches to a specified workspace.
- `list`: Lists all available workspaces.

---

## `terraform providers`
Lists all required providers for the configuration, including their versions and source locations.

**Usage**
```bash
terraform providers
```

---

## `terraform refresh`
Refreshes the state to align with the real infrastructure, updating resources' actual states in the state file.

**Usage**
```bash
terraform refresh
```

---

This cheat sheet provides an overview of each Terraform command, its options, and usage details. For more in-depth information, refer to the official [Terraform documentation](https://www.terraform.io/docs/commands/index.html).