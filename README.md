# azure_kubernetes
 
Creating kubernetes cluster on azure

```
terraform init
terraform plan
terraform apply
```

Getting credentials 
```
az aks get-credentials --resource-group <resource grp name> -n <name of cluster>
```

Deploy test app
```
kubectl apply -f test_app.yaml
```
