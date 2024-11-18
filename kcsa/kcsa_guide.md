# Cloud Native Security Learning Plan

## Domains & Competencies

### Overview of Cloud Native Security (14%)
- **The 4Cs of Cloud Native Security**: Covers the foundational principles of securing cloud-native environments: Code, Container, Cluster, and Cloud.
- **Cloud Provider and Infrastructure Security**: Focus on securing cloud infrastructure services and ensuring secure configurations.
- **Controls and Frameworks**: Overview of security controls and compliance frameworks like CIS Benchmarks and NIST.
- **Isolation Techniques**: Techniques like namespaces, sandboxing, and hypervisors to isolate workloads.
- **Artifact Repository and Image Security**: Securing container image registries, scanning images for vulnerabilities, and ensuring signed images.
- **Workload and Application Code Security**: Best practices for securing application code and runtime environments.

---

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

---

### Kubernetes Security Fundamentals (22%)
- **Pod Security Standards**: Overview of Kubernetes Pod Security Standards (Baseline, Restricted, Privileged).
- **Pod Security Admissions**: Using admission controllers to enforce Pod security policies.
- **Authentication**: Authentication mechanisms like Service Accounts, OIDC, and Certificates.
- **Authorization**: Managing permissions with RBAC and ABAC.
- **Secrets**: Secure management of sensitive data in Kubernetes using Secrets.
- **Isolation and Segmentation**: Techniques for isolating workloads using namespaces and labels.
- **Audit Logging**: Configuring Kubernetes audit logs for security visibility.
- **Network Policy**: Implementing Kubernetes NetworkPolicies to control network traffic.

---

### Kubernetes Threat Model (16%)
- **Kubernetes Trust Boundaries and Data Flow**: Understanding boundaries within Kubernetes to identify and mitigate risks.
- **Persistence**: Recognizing and preventing unauthorized persistence within the cluster.
- **Denial of Service**: Identifying and mitigating DoS attacks in Kubernetes environments.
- **Malicious Code Execution and Compromised Applications in Containers**: Handling risks related to malicious or vulnerable containers.
- **Attacker on the Network**: Securing against attackers attempting lateral movement in the network.
- **Access to Sensitive Data**: Protecting sensitive data within clusters from unauthorized access.
- **Privilege Escalation**: Preventing attackers from gaining elevated privileges.

---

### Platform Security (16%)
- **Supply Chain Security**: Ensuring the integrity and security of the software supply chain.
- **Image Repository**: Securing container image repositories to prevent unauthorized access and tampering.
- **Observability**: Tools and practices for monitoring and securing Kubernetes environments.
- **Service Mesh**: Using service mesh technologies like Istio for securing service-to-service communication.
- **PKI**: Configuring public key infrastructure (PKI) for secure communications.
- **Connectivity**: Securing communication channels within and across clusters.
- **Admission Control**: Enforcing security policies during resource creation.
  
---

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