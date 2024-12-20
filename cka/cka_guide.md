# Certified Kubernetes Administrator Guide

## My Thoughts on the Exam

### Why I Took the Exam
I wanted to take my Kubernetes knowledge to the next level by becoming certified. 
It was also necessary for my path to becoming a Kubestronaut.

Here's what I've learned in preparation for the exam:
- Always choose imperative over declarative.
- The development of Kubernetes moves faster than I can learn.
- Learn by doing.
- Build your own Kubernetes cluster "The Hard Way".
- Learn VIM!!
- Learn JSON Path queries.

### About the Exam
The exam is performance-based, meaning you will need to execute tasks in a lab environment. That's why you need to be comfortable executing Kubernetes commands.
You are allowed to use documentation and any resources within the kubernetes.io domain. Don’t think this will make your tasks easier, as documentation won’t always provide a solution or point to exactly what you need.

The exam is 120 minutes long, and you will have between 15 and 20 tasks with 2 to 5 subtasks. This leaves little room for error, so you need to "get into the flow" as quickly as possible.
The maximum score you can achieve is 100%.

I completed the exam in 80 minutes and scored a comfortable 98%.

### Book your exam Here
- [Certified Kubernetes Administrator (CKA)](https://training.linuxfoundation.org/certification/certified-kubernetes-administrator-cka)

***The exam costs 395 USD but LF, CNCF have many actions that can reduce the price.***

## Exam Objectives

### Storage (10%)
- [Understand storage classes, persistent volumes](https://kubernetes.io/docs/concepts/storage/storage-classes/)
  - [local storage example](./manifests/00-storage/storage-simple-local-storage.md)
- [Understand volume mode, access modes and reclaim policies for volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#volume-modes)
- [Understand persistent volume claims primitive](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#persistentvolumeclaims)
- [Know how to configure applications with persistent storage](https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/)

### Troubleshooting (30%)
- [Evaluate cluster and node logging](https://kubernetes.io/docs/tasks/debug/debug-cluster/)
- [Understand how to monitor applications](https://kubernetes.io/docs/tasks/debug/debug-application/)
- [Manage container stdout & stderr logs](https://kubernetes.io/docs/concepts/cluster-administration/logging/)
- [Troubleshoot application failure](https://kubernetes.io/docs/tasks/debug/debug-application/)
- [Troubleshoot cluster component failure](https://kubernetes.io/docs/tasks/debug/debug-cluster/)
- [Troubleshoot networking](https://kubernetes.io/docs/tasks/debug/debug-application/debug-service/)

### Workloads & Scheduling (15%)
- [Understand deployments and how to perform rolling update and rollbacks](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
- [Use ConfigMaps and Secrets to configure applications](https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/)
- [Know how to scale applications](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#scaling-a-deployment)
- [Understand the primitives used to create robust, self-healing, application deployments](https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/)
- [Understand how resource limits can affect Pod scheduling](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)
- [Awareness of manifest management and common templating tools](https://helm.sh/)

### Cluster Architecture, Installation & Configuration (25%)
- [Manage role based access control (RBAC)](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)
- [Use Kubeadm to install a basic cluster](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/)
- [Manage a highly-available Kubernetes cluster](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/high-availability/)
- [Provision underlying infrastructure to deploy a Kubernetes cluster](https://kubernetes.io/docs/setup/production-environment/)
- [Perform a version upgrade on a Kubernetes cluster using Kubeadm](https://kubernetes.io/docs/tasks/administer-cluster/kubeadm/kubeadm-upgrade/)
- [Implement etcd backup and restore](https://kubernetes.io/docs/tasks/administer-cluster/configure-upgrade-etcd/)

### Services & Networking (20%)
- [Understand host networking configuration on the cluster nodes](https://kubernetes.io/docs/concepts/cluster-administration/networking/)
- [Understand connectivity between Pods](https://kubernetes.io/docs/concepts/cluster-administration/networking/)
- [Understand ClusterIP, NodePort, LoadBalancer service types and endpoints](https://kubernetes.io/docs/concepts/services-networking/service/)
- [Know how to use Ingress controllers and Ingress resources](https://kubernetes.io/docs/concepts/services-networking/ingress/)
- [Know how to configure and use CoreDNS](https://kubernetes.io/docs/tasks/administer-cluster/coredns/)
- [Choose an appropriate container network interface plugin](https://kubernetes.io/docs/concepts/cluster-administration/networking/#how-to-implement-the-kubernetes-networking-model)

---

## Additional Resources

### Courses
- **[Udemy: Certified Kubernetes Administrator (CKA) with Practice Tests](https://www.udemy.com/course/certified-kubernetes-administrator-with-practice-tests)**
- **[KodeKloud: CKA Certification Course - Certified Kubernetes Administrator](https://learn.kodekloud.com/user/courses/cka-certification-course-certified-kubernetes-administrator)**
- **[KodeKloud: JSON Path Test - Free Course](https://learn.kodekloud.com/user/courses/json-path-test-free-course)**

### Practice Exams
- **[Kodekloud: Udemy Labs - Certified Kubernetes Administrator with Practice Tests](https://learn.kodekloud.com/user/courses/udemy-labs-certified-kubernetes-administrator-with-practice-tests)**
- **[KodeKloud: CKA Certification Course - Certified Kubernetes Administrator](https://learn.kodekloud.com/user/courses/cka-certification-course-certified-kubernetes-administrator)**
- **[Kodekloud: Ultimate Certified Kubernetes Administrator (CKA) Mock Exam Series](https://learn.kodekloud.com/user/courses/ultimate-certified-kubernetes-administrator-cka-mock-exam-series)**
- **[Killer: CKA Simulator](https://killer.sh/cka)**
- **[Killercoda: CKA](https://killercoda.com/cka)**
- **[Build your own cluster](./manifests/90-my-cluster-env/kubernetes-cluster-setup-guide.md)**

### Sources
*None*

### Time Spent
*40 hours*