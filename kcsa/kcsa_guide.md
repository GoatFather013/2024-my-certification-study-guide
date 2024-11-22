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
- **The 4Cs of Cloud Native Security**: Code, Container, Cluster, and Cloud.
  - **[Securing Cloud-Native Applications](https://kubernetes.io/blog/2020/05/28/securing-cloud-native-applications/)** Discusses securing cloud-native environments, including code, containers, clusters, and cloud services.
  - **[Kubernetes Security Best Practices](https://kubernetes.io/docs/tutorials/kubernetes-security/)** Best practices for securing Kubernetes clusters, workloads, and cloud-native environments.
- **Cloud Provider and Infrastructure Security**: Focus on securing cloud infrastructure services and ensuring secure configurations.
  - **[Cloud Provider Configurations](https://kubernetes.io/docs/concepts/architecture/cloud-controller/)** Explains how Kubernetes integrates with cloud providers and securing infrastructure services.
- **Controls and Frameworks**: Overview of security controls and compliance frameworks like CIS Benchmarks and NIST.
  - **[CIS Kubernetes Benchmark](https://kubernetes.io/docs/tasks/administer-cluster/cis-security-benchmark/)** Guide for applying CIS security benchmarks to Kubernetes clusters.
  - **[NIST SP 800-190: Application Container Security Guide](https://csrc.nist.gov/publications/detail/sp/800-190/final)** Frameworks for securing cloud-native apps, including Kubernetes.
- **Isolation Techniques**: Techniques like namespaces, sandboxing, and hypervisors to isolate workloads.
  - **[Namespaces](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/)** Using namespaces to isolate workloads.
  - **[Pod Security Policies](https://kubernetes.io/docs/concepts/policy/pod-security-policy/)** Ensuring the isolation of workloads using Pod Security Policies.
- **Artifact Repository and Image Security**: Securing container image registries, scanning images for vulnerabilities, and ensuring signed images.
  - **[Container Image Security](https://kubernetes.io/docs/concepts/containers/images/)** Overview of securing container images and managing image registries.
  - **[Kubernetes Image Scanning](https://kubernetes.io/docs/tasks/configure-pod-container/container-image-security/)** How to scan and secure container images.
- **Workload and Application Code Security**: Best practices for securing application code and runtime environments.
  - **[Securing Workloads](https://kubernetes.io/docs/tutorials/kubernetes-security/)** Best practices for securing workloads and applications running in Kubernetes.

### Kubernetes Cluster Component Security (22%)
- **API Server**: Security configurations for the Kubernetes API server, including access control and authentication.
  - **[Kubernetes API Server Security](https://kubernetes.io/docs/tasks/administer-cluster/securing-a-cluster/)** Configurations and security measures for the Kubernetes API server.
- **Controller Manager**: Securing cluster-level controllers and their associated configurations.
  - **[Kubernetes Controller Security](https://kubernetes.io/docs/tasks/administer-cluster/controller-manager/)** Best practices for securing Kubernetes controllers and their configurations.
- **Scheduler**: Understanding potential risks and securing Kubernetes scheduler operations.
  - **[Kubernetes Scheduler Security](https://kubernetes.io/docs/concepts/scheduling-eviction/scheduler/)** Overview of securing the Kubernetes scheduler.
- **Kubelet**: Protecting the node agent (kubelet) and its APIs from unauthorized access.
  - **[Securing Kubelet](https://kubernetes.io/docs/tasks/administer-cluster/kubelet-security/)** Protecting the Kubelet and its API.
- **Container Runtime**: Securing the container runtime (e.g., Docker, containerd).
  - **[Securing Container Runtime](https://kubernetes.io/docs/setup/production-environment/container-runtimes/)** Securing container runtimes such as Docker and containerd in Kubernetes environments.
- **KubeProxy**: Securing the Kubernetes network proxy and its configurations.
  - **[KubeProxy Security](https://kubernetes.io/docs/concepts/services-networking/network-policies/)** Securing the KubeProxy network proxy and configurations.
- **Pod**: Understanding Pod-level security, including PodSecurityPolicies and context.
  - **[Pod Security Policies](https://kubernetes.io/docs/concepts/policy/pod-security-policy/)** Ensuring Pod-level security and enforcing security policies.
- **Etcd**: Securing etcd, the cluster's key-value store, to prevent data leakage or unauthorized access.
  - **[Securing etcd](https://kubernetes.io/docs/tasks/administer-cluster/configure-etcd/)** Guidelines for securing etcd, the key-value store.
- **Container Networking**: Ensuring secure network configurations using CNI plugins and policies.
  - **[Network Policies](https://kubernetes.io/docs/concepts/services-networking/network-policies/)** Securing networking with CNI plugins and policies.
- **Client Security**: Best practices for securing Kubernetes client tools like kubectl.
  - **[Securing kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)** Securing client tools like `kubectl` for managing Kubernetes.
- **Storage**: Securing Kubernetes storage solutions, including volumes and storage classes.
  - **[Securing Storage in Kubernetes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/)** Securing Kubernetes storage solutions, including volumes and storage classes.

### Kubernetes Security Fundamentals (22%)
- **Pod Security Standards**: Overview of Kubernetes Pod Security Standards (Baseline, Restricted, Privileged).
  - **[Pod Security Standards](https://kubernetes.io/docs/concepts/security/pod-security-standards/)**
- **Pod Security Admissions**: Using admission controllers to enforce Pod security policies.
  - **[Pod Security Admission](https://kubernetes.io/docs/tasks/configure-pod-container/pod-security-admission/)**
- **Authentication**: Authentication mechanisms like Service Accounts, OIDC, and Certificates.
  - **[Authentication in Kubernetes](https://kubernetes.io/docs/reference/access-authn-authz/authentication/)** Authentication mechanisms in Kubernetes including Service Accounts and OIDC.
- **Authorization**: Managing permissions with RBAC and ABAC.
  - **[Authorization in Kubernetes](https://kubernetes.io/docs/reference/access-authn-authz/authorization/)**
- **Secrets**: Secure management of sensitive data in Kubernetes using Secrets.
  - **[Managing Secrets](https://kubernetes.io/docs/concepts/configuration/secret/)**
- **Isolation and Segmentation**: Techniques for isolating workloads using namespaces and labels.
  - **[Namespaces](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/)**
- **Audit Logging**: Configuring Kubernetes audit logs for security visibility.
  - **[Kubernetes Audit Logs](https://kubernetes.io/docs/tasks/debug/debug-cluster/audit/)**
- **Network Policy**: Implementing Kubernetes NetworkPolicies to control network traffic.
  - **[Network Policies](https://kubernetes.io/docs/concepts/services-networking/network-policies/)**

### Kubernetes Threat Model (16%)
- **Kubernetes Trust Boundaries and Data Flow**: Understanding boundaries within Kubernetes to identify and mitigate risks.
  - **[Kubernetes Trust Boundaries](https://kubernetes.io/docs/concepts/security/cluster-identity/)**
- **Persistence**: Recognizing and preventing unauthorized persistence within the cluster.
  - **[Kubernetes Persistence and Volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/)** Techniques for preventing unauthorized persistence within the Kubernetes cluster.
- **Denial of Service**: Identifying and mitigating DoS attacks in Kubernetes environments.
  - **[Denial of Service Prevention](https://kubernetes.io/docs/concepts/cluster-administration/networking/)** Mitigating Denial of Service (DoS) attacks within Kubernetes.
- **Malicious Code Execution and Compromised Applications in Containers**: Handling risks related to malicious or vulnerable containers.
  - **[Securing Workloads](https://kubernetes.io/docs/tutorials/kubernetes-security/)** Protecting against malicious code execution and securing containerized applications.
- **Attacker on the Network**: Securing against attackers attempting lateral movement in the network.
  - **[Network Policies](https://kubernetes.io/docs/concepts/services-networking/network-policies/)**
- **Access to Sensitive Data**: Protecting sensitive data within clusters from unauthorized access.
  - **[Secrets Management](https://kubernetes.io/docs/concepts/configuration/secret/)** Protecting sensitive data from unauthorized access in Kubernetes.
- **Privilege Escalation**: Preventing attackers from gaining elevated privileges.
  - **[Kubernetes Security Best Practices](https://kubernetes.io/docs/tutorials/kubernetes-security/)** Preventing privilege escalation within a Kubernetes cluster.

### Platform Security (16%)
- **Supply Chain Security**: Ensuring the integrity and security of the software supply chain.
  - **[Kubernetes Supply Chain Security](https://kubernetes.io/blog/2020/07/02/securing-the-software-supply-chain-with-kubernetes/)**
- **Image Repository**: Securing container image repositories to prevent unauthorized access and tampering.
  - **[Securing Image Repositories](https://kubernetes.io/docs/tasks/configure-pod-container/container-image-security/)**
- **Observability**: Tools and practices for monitoring and securing Kubernetes environments.
  - **[Observability in Kubernetes](https://kubernetes.io/docs/tasks/debug/debug-cluster/)**
- **Service Mesh**: Using service mesh technologies like Istio for securing service-to-service communication.
  - **[Service Mesh in Kubernetes](https://kubernetes.io/docs/concepts/services-networking/service-mesh/)**
- **PKI**: Configuring public key infrastructure (PKI) for secure communications.
  - **[PKI in Kubernetes](https://kubernetes.io/docs/tasks/tls/certificate-approval/)**
- **Connectivity**: Securing communication channels within and across clusters.
  - **[Securing Cluster Networking](https://kubernetes.io/docs/concepts/cluster-administration/networking/)**
- **Admission Control**: Enforcing security policies during resource creation.
  - **[Admission Controllers](https://kubernetes.io/docs/reference/access-authn-authz/admission-controllers/)**

### Compliance and Security Frameworks (10%)
- **Compliance Frameworks**: Understanding compliance frameworks like GDPR, HIPAA, and PCI-DSS.
  - **[CIS Kubernetes Benchmark](https://kubernetes.io/docs/tasks/administer-cluster/cis-security-benchmark/)** Applying compliance frameworks like CIS Benchmarks to Kubernetes.
- **Threat Modelling Frameworks**: Utilizing frameworks like STRIDE and ATT&CK for identifying and mitigating threats.
  - **[MITRE ATT&CK for Containers](https://attack.mitre.org/matrices/enterprise/containers/)** Using threat modeling frameworks like ATT&CK to identify and mitigate risks in Kubernetes environments.
- **Supply Chain Compliance**: Ensuring compliance in software supply chains.
  - **[Securing the Software Supply Chain](https://kubernetes.io/blog/2020/07/02/securing-the-software-supply-chain-with-kubernetes/)** Ensuring compliance
- **Automation and Tooling**: Leveraging automation tools for enforcing security policies and standards.

---

## Additional Resources

### Courses
*none found*

### Practice Exams
*none found*

### Sources
#### 1. **NIST (National Institute of Standards and Technology)**
NIST provides guidelines, frameworks, and best practices relevant to Kubernetes and cloud security.

- **[NIST Cybersecurity Framework (CSF)](https://www.nist.gov/cyberframework)**
  - Core framework for managing cybersecurity risks in cloud environments, especially for Kubernetes.

- **[NIST SP 800-190: Application Container Security Guide](https://csrc.nist.gov/publications/detail/sp/800-190/final)**
  - Best practices for securing application containers like Docker and Kubernetes.

- **[NIST SP 800-53: Security and Privacy Controls for Federal Information Systems](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)**
  - Essential controls for securing cloud-based infrastructure.

- **[NIST SP 800-30: Guide for Conducting Risk Assessments](https://csrc.nist.gov/publications/detail/sp/800-30/rev-1/final)**
  - Guide for conducting risk assessments in cloud and containerized environments.

---

#### 2. **OWASP (Open Web Application Security Project)**
OWASP provides resources on securing web applications, containers, and cloud-native environments.

- **[OWASP Kubernetes Security Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Kubernetes_Security_Cheat_Sheet.html)**
  - Best practices for securing Kubernetes environments and addressing container vulnerabilities.

- **[OWASP Cloud-Native Application Security Top 10](https://owasp.org/www-project-cloud-native-application-security-top-10/)**
  - Key security risks for cloud-native environments, including Kubernetes and containers.

- **[OWASP Web Application Security Testing Guide (WSTG)](https://owasp.org/www-project-web-security-testing-guide/)**
  - Security testing strategies for cloud and containerized applications.

- **[OWASP Dependency-Check](https://owasp.org/www-project-dependency-check/)**
  - Tool for identifying known vulnerabilities in dependencies, relevant for securing containerized applications.

---

#### 3. **STRIDE**
STRIDE is a threat modeling methodology that helps identify security threats in applications, especially in Kubernetes and cloud environments.

- **[Microsoft Threat Modeling Tool and STRIDE Methodology](https://learn.microsoft.com/en-us/security/threat-modeling/)**
  - Guide for applying STRIDE to threat modeling in Kubernetes and cloud environments.

- **[OWASP Threat Modeling for Cloud-Native Applications](https://owasp.org/www-project-cloud-native-application-security-top-10/)**
  - Application of STRIDE in threat modeling for cloud-native apps, including Kubernetes.

- **[Threat Modeling: Designing for Security by Adam Shostack](https://www.amazon.com/Threat-Modeling-Designing-Security-Adam/dp/111878439X)**
  - Comprehensive guide to threat modeling and the STRIDE methodology, applicable to cloud and Kubernetes security.

---

#### 4. **MITRE ATT&CK**
MITRE ATT&CK provides a knowledge base of adversary tactics, techniques, and procedures (TTPs), applicable to Kubernetes and cloud security.

- **[MITRE ATT&CK Framework](https://attack.mitre.org/)**
  - Framework to understand adversary behaviors and techniques, with applications in Kubernetes and cloud environments.

- **[MITRE ATT&CK for Containers](https://attack.mitre.org/matrices/enterprise/containers/)**
  - Section of ATT&CK dedicated to container security, focusing on Kubernetes, Docker, and other container platforms.

- **[MITRE ATT&CK Evaluations](https://attackevals.mitre.org/)**
  - Evaluations of security products against ATT&CK techniques, including those for cloud and container environments.

- **[ATT&CK Navigator](https://mitre-attack.github.io/attack-navigator/)**
  - Tool for visualizing and analyzing adversary TTPs and security gaps in Kubernetes and cloud environments.

#### 5. **Additional Resources for Kubernetes and Cloud Security**

- **[Kubernetes Documentation](https://kubernetes.io/docs/)**
  - Official documentation for understanding Kubernetes security features, configurations, and best practices.

- **[Kubernetes Security Best Practices](https://kubernetes.io/docs/tutorials/kubernetes-security/)**
  - Guide for securing Kubernetes clusters, including RBAC, network policies, and secrets management.

- **[CNCF Cloud-Native Security Whitepaper](https://www.cncf.io/wp-content/uploads/2020/06/CNCF-Cloud-Native-Security-Whitepaper-2020.pdf)**
  - In-depth look at securing cloud-native applications, including microservices and containers.

- **[Practical Guide to Cloud-Native Security by O'Reilly](https://www.oreilly.com/library/view/cloud-native-security/9781492083337/)**
  - Practical advice for securing cloud-native environments, focusing on Kubernetes and container security.


### Time Spent
*0 hours*