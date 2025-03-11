kubectl create namespace sqldb
kubectl create namespace webapp

# Create a docker-registry secret
kubectl create secret docker-registry ecr-secret \
   --docker-server=097656145156.dkr.ecr.us-east-1.amazonaws.com \
   --docker-username=AWS \
   --docker-password=$(aws ecr get-login-password --region us-east-1) \
   --namespace=sqldb
   
# Create a docker-registry secret
kubectl create secret docker-registry ecr-secret2 \
   --docker-server=097656145156.dkr.ecr.us-east-1.amazonaws.com \
   --docker-username=AWS \
   --docker-password=$(aws ecr get-login-password --region us-east-1) \
   --namespace=webapp