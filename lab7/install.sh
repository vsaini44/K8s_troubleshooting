 git clone https://github.com/nginx/kubernetes-ingress.git --branch v5.3.4
 cd kubernetes-ingress
 kubectl apply -f deployments/common/ns-and-sa.yaml
 kubectl apply -f deployments/rbac/rbac.yaml
 kubectl apply -f examples/shared-examples/default-server-secret/default-server-secret.yaml
 kubectl apply -f deployments/common/nginx-config.yaml
 kubectl apply -f deployments/common/ingress-class.yaml
 kubectl apply -f https://raw.githubusercontent.com/nginx/kubernetes-ingress/v5.3.4/deploy/crds.yaml
 kubectl apply -f deployments/daemon-set/nginx-ingress.yaml
