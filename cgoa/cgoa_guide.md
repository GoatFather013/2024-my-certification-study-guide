# GitOps Guide

## GitOps Terminology (20%)

### Continuous
An ongoing process of delivering and maintaining applications or systems in an automated, scalable way, aligned with GitOps principles.

### Declarative Description
A style of configuration management where the desired end-state is described without specifying the steps to reach it.

### Desired State
The intended state of a system as defined in a configuration file, which GitOps aims to maintain.

### State Drift
The divergence between the actual state of a system and the desired state defined in configuration files.

### State Reconciliation
The process of automatically detecting and correcting state drift, ensuring that the actual state matches the desired state.

### GitOps Managed Software System
A system where GitOps principles are applied to manage infrastructure, applications, or both through Git-based version control.

### State Store
A repository or storage location where the desired state of a system is stored, often using Git as the version-controlled source.

### Feedback Loop
A mechanism to monitor, report, and adjust the system’s state based on real-time metrics or changes.

### Rollback
A process that reverts a system to a previously desired state in case of issues or unexpected behaviors.

---

## GitOps Principles (30%)

### Declarative
The practice of defining the desired state of a system in a version-controlled repository in a declarative manner.

### Versioned and Immutable
All changes are recorded in Git, allowing for an auditable and versioned history, with configurations that are immutable once committed.

### Pulled Automatically
Changes to the desired state are automatically pulled and applied to the system, rather than being manually pushed.

### Continuously Reconciled
The system continuously checks and adjusts its state to match the desired configuration, ensuring consistency.

---

## Related Practices (16%)

### Configuration as Code (CaC)
Treating configuration files as code, stored in version control, and managed with GitOps practices.

### Infrastructure as Code (IaC)
The practice of managing infrastructure using code, typically in a version-controlled system, enabling automated deployments and updates.

### DevOps and DevSecOps
Cultural and technical practices that combine development, operations, and security with automation, monitoring, and GitOps methodologies.

### CI and CD
Continuous Integration and Continuous Deployment processes that ensure regular, reliable, and automated updates to systems and applications.

---

## GitOps Patterns (20%)

### Deployment and Release Patterns
Strategies for deploying and releasing changes in a controlled, repeatable manner using GitOps.

### Progressive Delivery Patterns
A methodology for gradually releasing changes, often including canary or blue-green deployments, to minimize risk.

### Pull vs. Event-driven
Comparison of pull-based deployment (where agents pull changes from Git) vs. event-driven models (where events trigger updates).

### Architecture Patterns
Design strategies for GitOps implementations, including in-cluster and external reconcilers, state store management, and more.

---

## Tooling (14%)

### Manifest Format and Packaging
Formats and packaging methods for configuration files, such as Helm charts or Kustomize, to define desired state.

### State Store Systems
Systems used for storing the desired state, typically Git but may include other version-controlled storage solutions.

### Reconciliation Engines
Tools that facilitate GitOps workflows by continuously checking and enforcing the desired state, such as ArgoCD, Flux, and other alternatives.

### Interoperability with Notifications, Observability, and Continuous Integration Tools
The integration of GitOps tooling with other systems for notifications, monitoring, observability, and CI/CD.

---

## Additional Resources

### Courses
- [Git for Beginners - KodeKloud](https://learn.kodekloud.com/user/courses/git-for-beginners)
- [GitOps with ArgoCD - KodeKloud](https://learn.kodekloud.com/user/courses/gitops-with-argocd)
- [Introduction to GitOps (LFS169)](https://trainingportal.linuxfoundation.org/courses/introduction-to-gitops-lfs169)

### Practice Exams
*Non Found*

### Sources
- [GitOps on GitLab](https://about.gitlab.com/topics/gitops/)
- [Red Hat - What is GitOps?](https://www.redhat.com/en/topics/devops/what-is-gitops)
- [GitOps Tech](https://www.gitops.tech/)
- [GitOps Primer by Peter Rombouts](https://peterrombouts.nl/2022/05/16/gitops-primer/)
- [Open GitOps](https://opengitops.dev/)

### Time Spent
*4 - 8 hours*

---