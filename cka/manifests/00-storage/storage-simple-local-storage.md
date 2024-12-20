# Kubernetes Simple Local Persistent Storage Configuration

This document outlines the configuration for setting up persistent storage in Kubernetes using a combination of StorageClass, PersistentVolume (PV), PersistentVolumeClaim (PVC), and a Pod.

---
## 1. StorageClass Configuration
The `StorageClass` defines the storage provisioning mechanism. In this example, the `local-storage` class is configured to use non-provisioned, local storage.

```yaml
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: local-storage
provisioner: kubernetes.io/no-provisioner # indicates that this StorageClass does not support automatic provisioning
volumeBindingMode: WaitForFirstConsumer
```

### Key Attributes
- **provisioner**: `kubernetes.io/no-provisioner` ensures storage is not dynamically provisioned.
- **volumeBindingMode**: `WaitForFirstConsumer` ensures volumes are bound only when a Pod is scheduled.

Source: [`0101-local-storage-class.yaml`](./01-storage-classes/0101-local-storage-class.yaml)

---

## 2. PersistentVolume (PV)

The `PersistentVolume` defines the actual storage resource available to the cluster.

```yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: standard-pv
  namespace: default
spec:
  capacity:
    storage: 100Mi
  accessModes:
    - ReadWriteOnce
  storageClassName: local-storage
  hostPath:
    path: "/kubernetes/data"
```

### Key Attributes
- **capacity**: Specifies the storage size (`100Mi`).
- **accessModes**: Allows the volume to be mounted as `ReadWriteOnce`.
- **hostPath**: Uses the local filesystem at `/kubernetes/data`.

Source: [`0201-standard-persistent-volume.yaml`](./02-persitent-volumes/0201-standard-persistent-volume.yaml)

---

## 3. PersistentVolumeClaim (PVC)

The `PersistentVolumeClaim` is used to request storage resources defined by the `PersistentVolume`.

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: standard-pv-claim
spec:
  accessModes:
    - ReadWriteOnce
  volumeMode: Filesystem
  resources:
    requests:
      storage: 100Mi
  storageClassName: local-storage
```

### Key Attributes
- **resources.requests.storage**: Requests `100Mi` of storage.
- **accessModes**: Matches the PV's `ReadWriteOnce` mode.
- **storageClassName**: Matches the `local-storage` class.

Source: [`0202-standard-persistent-volume-claim.yaml`](./02-persitent-volumes/0202-standard-persistent-volume-claim.yaml)

---

## 4. Pod Configuration with Persistent Storage

The Pod uses the `PersistentVolumeClaim` to mount storage to a container.

```yaml
apiVersion: v1
kind: Pod
metadata:
  labels:
    run: nginx-pv-pod
  name: nginx-pv-pod
spec:
  containers:
  - image: nginx:latest
    name: nginx-pv-pod
    resources:
      limits:
        memory: "128Mi"
        cpu: "150m"
      requests:
        memory: "64Mi"
        cpu: "100m"
    volumeMounts:
    - mountPath: "/usr/share/nginx/html"
      name: nginx-pv-storage
  dnsPolicy: ClusterFirst
  restartPolicy: Always
  volumes:
  - name: nginx-pv-storage
    persistentVolumeClaim:
      claimName: standard-pv-claim
```

### Key Attributes
- **volumeMounts**: Mounts the PVC at `/usr/share/nginx/html`.
- **volumes.persistentVolumeClaim.claimName**: References the `standard-pv-claim` PVC.

Source: [`nginx-pv-pod.yaml`](./04-configure-persistent-storage/0401-nginx-pv-pod.yaml)

---

## Summary

1. **StorageClass**: Defines the type and configuration of storage.
2. **PersistentVolume**: Represents the storage resource available to the cluster.
3. **PersistentVolumeClaim**: Requests storage from the PV.
4. **Pod**: Uses the PVC to access the persistent storage.

### Diagram of Relationships

```
StorageClass -> PersistentVolume -> PersistentVolumeClaim -> Pod
```

By following this setup, Kubernetes can manage persistent storage for applications seamlessly.
