NAMESPACE=el

   
create-aks-cluster:
	terraform init && \
	terraform plan  
resize-aks-cluster
        
run-docker
docker run -v ./t_1.json:/data/t_1.json /hoome/ubuntu  /data/t_1.json

