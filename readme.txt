docker build -t my-flask-app .
docker run -d -p 8000:8000 my-flask-app

docker tag my-flask-app satyabrataswain/mypython-devops-project:v1
docker push satyabrataswain/mypython-devops-project:v1



kubectl apply -f k8s/deployment.yml
kubectl apply -f k8s/service.yml

minikube service flask-app-service --url

az aks get-credentials --resource-group app-grp --name devops-cluster