docker build -t ecommerce-ecr:latest .
docker tag ecommerce-ecr:latest 4182956913817.dkr.ecr.us-east-1.amazonaws.com/ecommerce-ecr:latest
docker push 418295691381.dkr.ecr.us-east-1.amazonaws.com/ecommerce-ecr:latest
kubectl delete all --all
cd k8s/
kubectl apply -f .
kubectl get pods
