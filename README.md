# Microservices - Demo

[![N|Solid](https://uploads-ssl.webflow.com/5d121ce15cf154f8f7d91740/5d259f18e31f053207dd7caf_logo.svg)](https://www.velotio.com/)

This demo contains 2 microservices
  - users API
  - orders API

# Pre - requisite !

  - Make sure you've configured docker

### Installation
Install kubectl binary with curl on Linux

```sh
$ curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
$ chmod +x ./kubectl
$ sudo mv ./kubectl /usr/local/bin/kubectl
```

For Minikube setup...

```sh
$ curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb
$ minikube start
```
Clone the repo using 
```sh
$ git clone git@github.com:pallav-velotio/golang_users-api.git
```
### Docker Hub Images For Reference : 
Users - https://hub.docker.com/repository/docker/velotiopallav/users-api
Orders - https://hub.docker.com/repository/docker/velotiopallav/orders-api
Service - https://hub.docker.com/repository/docker/velotiopallav/service-db

### Running the Cluster
Make sure you enable Ingress addons:
```sh
$ minikube addons enable ingress
```

Move to the Project Directory and run:
```sh
$ kubectl apply -f k8s
```


#### How to use the API's
Run the following command to get the Minikube IP 
```sh
$ minikube ip
```
For creating a user:
```sh
$ curl <minikube-ip>/api/v1/user -d '{"name":"pallav","age":25,"email":"x@x.com"}'
```
For getting all user:
```sh
$ curl <minikube-ip>/api/v1/users
```
For creating a order:
```sh
$ curl <minikube-ip>/api/v1/user/1/order -d '{"user_id":1,"amount":25,"description":"TestOrder"}'
```
For getting all order:
```sh
$ curl <minikube-ip>/api/v1/user/1/orders
```

More API's:
```sh
    /api/v1/user/{id:[0-9]+} GET - Get a particular user
	/api/v1/user/{id:[0-9]+} PUT - update user
	/api/v1/user/{id:[0-9]+} DELETE - delete user
	/api/v1/user/{id:[0-9]+}/order/{oid:[0-9]+} GET - Get a particular order
```

### Todos

 - Write Tests Cases
 - Load Balancer
 - Debugging and Forwarding

License
----

Velotio
