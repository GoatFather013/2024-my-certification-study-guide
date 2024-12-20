# Certified GitOps Associate Guide

## My Thoughts on the Exam

### Why I Took the Exam
I took the exam to solidify my knowledge about GitOps principles. Here are the key takeaways from what I learned:

- DevOps and GitOps are not interchangeable.
- GitOps is a subset derived from DevOps.
- Infrastructure as Code (IaC), Configuration as Code (CaC), and declarative manifests are essential components of GitOps.
- Version control, State Control and Reconciliation is everything in a correctly implemented GitOps env. 

### About the Exam
The exam itself is "easy" if you have a strong understanding of GitOps principles. Most of my study time was spent finding reliable GitOps resources and reading documentation on various GitOps engines, such as ArgoCD and Flux.

The exam is 90 minutes long and consists of 60 multiple-gamble questions. You need to score at least 75 out of 100 points to pass. I completed it in 30 minutes and scored 85 points.

### Book your exam Here
- [Certified GitOps Associate (CGOA)](https://trainingportal.linuxfoundation.org/courses/certified-gitops-associate-cgoa)

***The exam costs 250 USD but LF, CNCF have many actions that can reduce the price.***
***If you are not in a hurry to achieve this certification then I would wait on options to reduce the price.***

---

## Domains, Competencies, and Information

### GitOps Terminology (20%)
- **Continuous**: An ongoing process of delivering and maintaining applications or systems in an automated, scalable way, aligned with GitOps principles.
- **Declarative Description**: A style of configuration management where the desired end-state is described without specifying the steps to reach it.
- **Desired State**: The intended state of a system as defined in a configuration file, which GitOps aims to maintain.
- **State Drift**: The divergence between the actual state of a system and the desired state defined in configuration files.
- **State Reconciliation**: The process of automatically detecting and correcting state drift, ensuring that the actual state matches the desired state.
- **GitOps Managed Software System**: A system where GitOps principles are applied to manage infrastructure, applications, or both through Git-based version control.
- **State Store**: A repository or storage location where the desired state of a system is stored, often using Git as the version-controlled source.
- **Feedback Loop**: A mechanism to monitor, report, and adjust the system’s state based on real-time metrics or changes.
- **Rollback**: A process that reverts a system to a previously desired state in case of issues or unexpected behaviors.

### GitOps Principles (30%)
- **Declarative**: The practice of defining the desired state of a system in a version-controlled repository in a declarative manner.
- **Versioned and Immutable**: All changes are recorded in Git, allowing for an auditable and versioned history, with configurations that are immutable once committed.
- **Pulled Automatically**: Changes to the desired state are automatically pulled and applied to the system, rather than being manually pushed.
- **Continuously Reconciled**: The system continuously checks and adjusts its state to match the desired configuration, ensuring consistency.

### Related Practices (16%)
- **Configuration as Code (CaC)**: Treating configuration files as code, stored in version control, and managed with GitOps practices.
- **Infrastructure as Code (IaC)**: The practice of managing infrastructure using code, typically in a version-controlled system, enabling automated deployments and updates.
- **DevOps and DevSecOps**: Cultural and technical practices that combine development, operations, and security with automation, monitoring, and GitOps methodologies.
- **CI and CD**: Continuous Integration and Continuous Deployment processes that ensure regular, reliable, and automated updates to systems and applications.

### GitOps Patterns (20%)
- **Deployment and Release Patterns**: Strategies for deploying and releasing changes in a controlled, repeatable manner using GitOps.
- **Progressive Delivery Patterns**: A methodology for gradually releasing changes, often including canary or blue-green deployments, to minimize risk.
- **Pull vs. Event-driven**: Comparison of pull-based deployment (where agents pull changes from Git) vs. event-driven models (where events trigger updates).
- **Architecture Patterns**: Design strategies for GitOps implementations, including in-cluster and external reconcilers, state store management, and more.

### Tooling (14%)
- **Manifest Format and Packaging**: Formats and packaging methods for configuration files, such as Helm charts or Kustomize, to define desired state.
- **State Store Systems**: Systems used for storing the desired state, typically Git but may include other version-controlled storage solutions.
- **Reconciliation Engines**: Tools that facilitate GitOps workflows by continuously checking and enforcing the desired state, such as ArgoCD, Flux, and other alternatives.
- **Interoperability with Notifications, Observability, and Continuous Integration Tools**: The integration of GitOps tooling with other systems for notifications, monitoring, observability, and CI/CD.

---

## Additional Resources

### Courses
- [Kodekloud: Git for Beginners](https://learn.kodekloud.com/user/courses/git-for-beginners)
- [KodeKloud: GitOps with ArgoCD ](https://learn.kodekloud.com/user/courses/gitops-with-argocd)
- [Linux Foundation: Introduction to GitOps (LFS169)](https://trainingportal.linuxfoundation.org/courses/introduction-to-gitops-lfs169)

### Practice Exams
*None Found*

### Sources
- [GitOps on GitLab](https://about.gitlab.com/topics/gitops/)
- [Red Hat - What is GitOps?](https://www.redhat.com/en/topics/devops/what-is-gitops)
- [GitOps Tech](https://www.gitops.tech/)
- [GitOps Primer by Peter Rombouts](https://peterrombouts.nl/2022/05/16/gitops-primer/)
- [Open GitOps](https://opengitops.dev/)

### Time Spent
*4 - 8 hours*