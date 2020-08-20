# terraform-aks


## Create the Kubernetes cluster
1.Run a following command 
   ```
terraform init -backend-config="storage_account_name=<YourAzureStorageAccountName>" -backend-config="container_name=tfstate" -backend-config="access_key=<YourStorageAccountAccessKey>" -backend-config="key=codelab.microsoft.tfstate" 
   ```
2.Export secret
   ```
export TF_VAR_client_id=<service-principal-appid>
export TF_VAR_client_secret=<service-principal-password>
   ```
3.Double check infrastructure using following command (optional)
   ``` 
  terraform plan -out out.plan
   ```
4.Create a resources
   ```
  terraform apply out.plan
   ```

## Resize Cluster
1.Scale cluster using a following command
```
az aks scale --resource-group myResourceGroup --name myAKSCluster --node-count 1 --nodepool-name <your node pool name>
```


## Run Docker 
```
docker run -v ./t_1.json:/data/t_1.json <dockerimage> /data/t_1.json
```