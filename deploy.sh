#!/bin/bash

# pwd
logfile=/usr/src/app/output.log

export PATH="$PATH:/usr/src/app/google-cloud-sdk/bin"

result=$(gcloud container clusters get-credentials innotech-demo-gke-h --region asia-southeast1 --project innotech-demo)
echo $result | tee -a $logfile

kubectl create namespace market-demo | tee -a $logfile

cat $logfile

# kubectl apply -f api-deployment.yaml

# timeout 20

# kubectl apply -f api-ingress.yaml

# timeout 30

# kubectl apply -f api-ingress.yaml

# kubectl apply -f web-deployment.yaml

# timeout 20

# kubectl apply -f web-service.yaml
