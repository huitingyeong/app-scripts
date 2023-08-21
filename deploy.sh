#!/bin/bash

pwd

result=$(/usr/src/app/google-cloud-sdk/bin/gcloud container clusters get-credentials innotech-demo-gke-h --region asia-southeast1 --project innotech-demo)
echo $result

# kubectl create namespace market-demo

# kubectl apply -f api-deployment.yaml

# timeout 20

# kubectl apply -f api-ingress.yaml

# timeout 30

# kubectl apply -f api-ingress.yaml

# kubectl apply -f web-deployment.yaml

# timeout 20

# kubectl apply -f web-service.yaml
