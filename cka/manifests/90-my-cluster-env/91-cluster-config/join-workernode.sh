# run on worker nodes
kubeadm join <control-plane-host>:<port> --token <token> --discovery-token-ca-cert-hash sha256:<hash>


# if you lose the join command, you can get it from the control plane node with kubeadm
# kubeadm token create --print-join-command