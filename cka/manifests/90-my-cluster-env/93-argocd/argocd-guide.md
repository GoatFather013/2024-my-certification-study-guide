# Argo CD Configuration Steps

Argo CD is a declarative, GitOps continuous delivery tool for Kubernetes. The following steps guide you through its installation and configuration.

## 1. Install Argo CD

Create the `argocd` namespace and apply the installation manifest:

```bash
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

## The installation manifests include ClusterRoleBinding resources that reference argocd namespace. If you are installing Argo CD into a different namespace then make sure to update the namespace reference.
## If you are not interested in UI, SSO, and multi-cluster features, then you can install only the core Argo CD components.
```

This default installation will have a self-signed certificate and cannot be accessed without a bit of extra work. Do one of:

- Follow the instructions to configure a certificate (and ensure that the client OS trusts it).
- Configure the client OS to trust the self signed certificate.
- Use the --insecure flag on all Argo CD CLI operations in this guide.

Verify the installation by checking the status of the Argo CD pods:

```bash
kubectl get pods -n argocd
```

## 2. Download Argo CD CLI

Download the latest Argo CD CLI from the [releases page](https://github.com/argoproj/argo-cd/releases/latest):

```bash
curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
rm argocd-linux-amd64
```

## 3. Access the Argo CD API Server

By default, the Argo CD API server is not exposed externally. To access it, you can use port forwarding:

```bash
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}' ## ensure you have metallb enabled before execute this patch
```

## 4. Login Using the CLI

Retrieve the initial password for the `admin` account:

```bash
argocd admin initial-password -n argocd
```

Get the Argo CD load balancer IP:

```bash
kubectl get service argocd-server -n argocd
```

The output should look something like this:  

| NAME          | TYPE         | CLUSTER-IP     | EXTERNAL-IP   | PORT(S)                      | AGE |
|---------------|--------------|----------------|---------------|------------------------------|-----|
| argocd-server | LoadBalancer | 10.111.181.102 | 10.150.150.0  | 80:32365/TCP, 443:30697/TCP  | 10d |

Log in to Argo CD using the CLI:  

```bash
argocd login "<https://load_balancer_ip>"
```

After logging in, it's recommended to change the default password:

```bash
argocd account update-password
```
