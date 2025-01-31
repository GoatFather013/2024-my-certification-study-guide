# run this command on the control plane node to create the first control node. 
kubeadm init --apiserver-advertise-address="<ip-address>" --control-plane-endpoint="<control-plane-host>:<port>" --pod-network-cidr="<pod-network-cidr>" --kubernetes-version=v1.30.0