# Kind

Create a `kind-config.yaml` file

```yaml
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
name: kind-devops-pro
nodes:
  - role: control-plane
  - role: worker
  - role: worker
```

Create the cluster

```bash
kind create cluster --config ./kind-config.yaml
kind get clusters
kind delete cluster --name kind-devops-pro
```
