# Kubernetes and Cloud Security Associate (KCSA) Guide

## My Thoughts on the Exam

### Why I Took the Exam
I took the exam to because I needed a starting point for my Kubestronaut title.

### About the Exam
At the time I took my exam, there were no courses or practice exams available for it.
So, I didn't know what to expect in the exam.
The questions ranged from high-level knowledge to understanding what the letters in STRIDE mean.

You need to have a basic understanding of cluster security and everything related to it.

The exam is 90 minutes long and consists of 60 multiple-gamble questions. You need to score at least 75 out of 100 points to pass. I completed it in 25 minutes and scored 81 points.


### Book your exam Here
- [Kubernetes and Cloud Security Associate (KCSA)](https://training.linuxfoundation.org/certification/kubernetes-and-cloud-native-security-associate-kcsa/)

***The exam costs 250 USD but LF, CNCF have many actions that can reduce the price.***

---

## Exam Objectives

### Overview of Cloud Native Security (14%)
- **The 4Cs of Cloud Native Security**: Covers the foundational principles of securing cloud-native environments: Code, Container, Cluster, and Cloud.
- **Cloud Provider and Infrastructure Security**: Focus on securing cloud infrastructure services and ensuring secure configurations.
- **Controls and Frameworks**: Overview of security controls and compliance frameworks like CIS Benchmarks and NIST.
- **Isolation Techniques**: Techniques like namespaces, sandboxing, and hypervisors to isolate workloads.
- **Artifact Repository and Image Security**: Securing container image registries, scanning images for vulnerabilities, and ensuring signed images.
- **Workload and Application Code Security**: Best practices for securing application code and runtime environments.

### Kubernetes Cluster Component Security (22%)
- **API Server**: Security configurations for the Kubernetes API server, including access control and authentication.
- **Controller Manager**: Securing cluster-level controllers and their associated configurations.
- **Scheduler**: Understanding potential risks and securing Kubernetes scheduler operations.
- **Kubelet**: Protecting the node agent (kubelet) and its APIs from unauthorized access.
- **Container Runtime**: Securing the container runtime (e.g., Docker, containerd).
- **KubeProxy**: Securing the Kubernetes network proxy and its configurations.
- **Pod**: Understanding Pod-level security, including PodSecurityPolicies and context.
- **Etcd**: Securing etcd, the cluster's key-value store, to prevent data leakage or unauthorized access.
- **Container Networking**: Ensuring secure network configurations using CNI plugins and policies.
- **Client Security**: Best practices for securing Kubernetes client tools like kubectl.
- **Storage**: Securing Kubernetes storage solutions, including volumes and storage classes.

### Kubernetes Security Fundamentals (22%)
- **Pod Security Standards**: Overview of Kubernetes Pod Security Standards (Baseline, Restricted, Privileged).
- **Pod Security Admissions**: Using admission controllers to enforce Pod security policies.
- **Authentication**: Authentication mechanisms like Service Accounts, OIDC, and Certificates.
- **Authorization**: Managing permissions with RBAC and ABAC.
- **Secrets**: Secure management of sensitive data in Kubernetes using Secrets.
- **Isolation and Segmentation**: Techniques for isolating workloads using namespaces and labels.
- **Audit Logging**: Configuring Kubernetes audit logs for security visibility.
- **Network Policy**: Implementing Kubernetes NetworkPolicies to control network traffic.

### Kubernetes Threat Model (16%)
- **Kubernetes Trust Boundaries and Data Flow**: Understanding boundaries within Kubernetes to identify and mitigate risks.
- **Persistence**: Recognizing and preventing unauthorized persistence within the cluster.
- **Denial of Service**: Identifying and mitigating DoS attacks in Kubernetes environments.
- **Malicious Code Execution and Compromised Applications in Containers**: Handling risks related to malicious or vulnerable containers.
- **Attacker on the Network**: Securing against attackers attempting lateral movement in the network.
- **Access to Sensitive Data**: Protecting sensitive data within clusters from unauthorized access.
- **Privilege Escalation**: Preventing attackers from gaining elevated privileges.

### Platform Security (16%)
- **Supply Chain Security**: Ensuring the integrity and security of the software supply chain.
- **Image Repository**: Securing container image repositories to prevent unauthorized access and tampering.
- **Observability**: Tools and practices for monitoring and securing Kubernetes environments.
- **Service Mesh**: Using service mesh technologies like Istio for securing service-to-service communication.
- **PKI**: Configuring public key infrastructure (PKI) for secure communications.
- **Connectivity**: Securing communication channels within and across clusters.
- **Admission Control**: Enforcing security policies during resource creation.

### Compliance and Security Frameworks (10%)
- **Compliance Frameworks**: Understanding compliance frameworks like GDPR, HIPAA, and PCI-DSS.
- **Threat Modelling Frameworks**: Utilizing frameworks like STRIDE and ATT&CK for identifying and mitigating threats.
- **Supply Chain Compliance**: Ensuring compliance in software supply chains.
- **Automation and Tooling**: Leveraging automation tools for enforcing security policies and standards.

---

## Additional Resources

### Courses
*none found*

### Practice Exams
*none found*

### Sources
*none found*

### Time Spent
*0 hours*