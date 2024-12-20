# Kubernetes Cluster Setup Guide

This guide explains how to set up a Kubernetes cluster with one control plane and multiple worker nodes using the provided shell scripts.

## Prerequisites

### Ensure the following on all nodes (control plane and workers)

1. **Linux OS installed.**  
I used Ubuntu 22.04 for this cluster  

2. **SSH access enabled.**  
Should be enabled by default, but good to check  

3. **Proper IP and hostname configuration.**  
3.1. *Netplan example `/etc/netplan/netplan.yaml`:*  

   ```yaml
   network:
     ethernets:
       eth0:
         addresses:
         - 10.150.0.200/16
         nameservers:
           addresses:
           - 8.8.8.8
           - 8.8.4.4
           search: []
         routes:
         - to: default
           via: 10.150.0.1
   version: 2
   ```

3.2. *Hostname example `hostnamectl`:*  

   ```bash
   hostnamectl hostname "nodename"
   ```

---

## Steps to Set Up Kubernetes Cluster

### 1. Configure Base Node Settings

Run the [`base-node-installer.sh`](./91-cluster-config/base-node-installer.sh) script on **all nodes** (control plane and worker nodes) to configure prerequisites.

#### Script Details:

1. **Update `/etc/hosts`**:
   Add the IPs and hostnames of all nodes:

   ```bash
   echo '10.150.0.1 <<natgateway>>' | tee -a /etc/hosts ## this record can be skipped if you do not have a local nat
   echo '10.150.0.200 clr1-controlplane' | tee -a /etc/hosts
   echo '10.150.0.201 clr1-worker1' | tee -a /etc/hosts
   echo '10.150.0.202 clr1-worker2' | tee -a /etc/hosts
   ```

2. **Enable Kernel Modules and IP Forwarding**:

   ```bash
   cat <<EOF | tee /etc/modules-load.d/k8s.conf
   overlay
   br_netfilter
   EOF
   ```

3. **Configure Sysctl**:

   ```bash
   cat <<EOF | tee /etc/sysctl.d/k8s.conf
   net.bridge.bridge-nf-call-iptables  = 1
   net.bridge.bridge-nf-call-ip6tables = 1
   net.ipv4.ip_forward                 = 1
   EOF
   sysctl --system
   ```

4. **Turn Off Swap**:

   ```bash
   swapoff -a #check if there are no swap drives left in `/etc/fstab` because the kubeadm init will fail if swap is enabled.
   ```

5. **Enable Hyper-V modules**:
Because i'm using hyper-v as a hypervisor it's good to enable these modules.

   ```bash
   echo "hv_vmbus" | tee -a /etc/initramfs-tools/modules
   echo "hv_storvsc" | tee -a /etc/initramfs-tools/modules
   echo "hv_blkvsc" | tee -a /etc/initramfs-tools/modules
   echo "hv_netvsc" | tee -a /etc/initramfs-tools/modules
   update-initramfs -u
   ```

6. **Configure crictl**:
config file for crictl

   ```bash
   cat <<EOF | tee /etc/crictl.yaml
   runtime-endpoint: unix:///run/containerd/containerd.sock
   image-endpoint: unix:///run/containerd/containerd.sock
   timeout: 10
   debug: false
   EOF
   ```

7. **Install Required Packages**:

   ```bash
   apt-get update -y
   apt-get install -y apt-transport-https ca-certificates curl gpg "linux-cloud-tools-$(uname -r)"
   ```

8. **Add Docker and Kubernetes repositories**:

   ```bash
   mkdir -p -m 755 /etc/apt/keyrings
   install -m 0755 -d /etc/apt/keyrings
   curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
   echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | tee /etc/apt/sources.list.d/kubernetes.list
   echo \
     "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
     $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
     sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   chmod a+r /etc/apt/keyrings/docker.asc
   ```

9. **Install Kubernetes Tools**:

   ```bash
   apt-get install containerd.io kube{let,ctl,adm}='1.30.0-*' -y
   apt-mark hold containerd.io kubelet kubeadm kubectl
   ```

10. **Configure containerd**: 

   ```bash
   cat <<EOF | tee /etc/containerd/config.toml
   version = 2

   [plugins]
     [plugins."io.containerd.grpc.v1.cri"]
       sandbox_image = "registry.k8s.io/pause:3.9"
       [plugins."io.containerd.grpc.v1.cri".containerd]
         snapshotter = "overlayfs"
         [plugins."io.containerd.grpc.v1.cri".containerd.default_runtime]
           runtime_type = "io.containerd.runc.v2"
           [plugins."io.containerd.grpc.v1.cri".containerd.default_runtime.options]
             SystemdCgroup = true
       [plugins."io.containerd.grpc.v1.cri".cni]
         bin_dir = "/opt/cni/bin"
         conf_dir = "/etc/cni/net.d"
       [plugins."io.containerd.grpc.v1.cri".registry]
         [plugins."io.containerd.grpc.v1.cri".registry.mirrors]
           [plugins."io.containerd.grpc.v1.cri".registry.mirrors."docker.io"]
             endpoint = ["https://registry-1.docker.io"]
   EOF
   ```

---

### 2. Initialize the Control Plane

Run the [`create-controlplane.sh`](./91-cluster-config/create-controlplane.sh) script on the **control plane node** to initialize the Kubernetes cluster.

#### Command:
```bash
kubeadm init --apiserver-advertise-address="<ip-address>" \
             --control-plane-endpoint="<control-plane-host>:<port>" \
             --pod-network-cidr="<pod-network-cidr>" \
             --kubernetes-version=v1.30.0
```

- Replace:
  - `<ip-address>`: The IP of the control plane.
  - `<control-plane-host>:<port>`: Hostname and port of the control plane.
  - `<pod-network-cidr>`: The Pod network CIDR (e.g., `192.168.0.0/16`).

---

### 3. Join Worker Nodes

Run the [`join-workernode.sh'](./91-cluster-config/join-workernode.sh) script on **each worker node** to join them to the control plane.

#### Command:
```bash
kubeadm join <control-plane-host>:<port> \
             --token <token> \
             --discovery-token-ca-cert-hash sha256:<hash>
```

- Replace:
  - `<control-plane-host>:<port>`: Hostname and port of the control plane.
  - `<token>`: The Kubernetes token.
  - `<hash>`: The CA certificate hash.

#### If You Lose the Join Command:
Retrieve it from the control plane:
```bash
kubeadm token create --print-join-command
```

---

## Post-Setup Configuration

1. **Set Up kubectl**:
   On the control plane node, copy the kubeconfig to the default location:
   ```bash
   mkdir -p $HOME/.kube
   sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
   sudo chown $(id -u):$(id -g) $HOME/.kube/config
   ```

2. **Install a Pod Network Add-On**:
   Example for Calico:
   ```bash
   kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
   ```

---

## Troubleshooting

- Use `journalctl -u kubelet` to view logs if nodes fail to join.
- Check `kubeadm` token expiration and regenerate if needed.

--- 
