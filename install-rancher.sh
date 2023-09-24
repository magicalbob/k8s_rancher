# Create cert-manager namespace
kubectl create namespace cert-manager

# Install cert-manager crds
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.13.0/cert-manager.crds.yaml

# add jestack helm repo, then install cert-manager from it
helm repo add jetstack https://charts.jetstack.io
helm install   cert-manager jetstack/cert-manager   --namespace cert-manager   --version v1.13.0

# Create cert-manager namespace
kubectl create ns cattle-system

# add rancher-stable helm repo, then install rancher from it
helm repo add rancher-stable https://releases.rancher.com/server-charts/stable
helm install rancher rancher-stable/rancher   --namespace cattle-system   --set hostname=rancher.ellisbs.co.uk
