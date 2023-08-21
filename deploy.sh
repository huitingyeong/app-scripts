#!/bin/bash

# pwd
logfile=/usr/src/app/output.log

export PATH="$PATH:/usr/src/app/google-cloud-sdk/bin"

gcloud container clusters get-credentials innotech-demo-gke-h --region asia-southeast1 --project innotech-demo | tee -a $logfile

kubectl create namespace market-demo | tee -a $logfile

kubectl apply -f api-deployment.yaml | tee -a $logfile

sleep 20

kubectl apply -f api-service.yaml | tee -a $logfile

sleep 30

kubectl apply -f api-ingress.yaml | tee -a $logfile

kubectl apply -f web-deployment.yaml | tee -a $logfile

sleep 20

kubectl apply -f web-service.yaml | tee -a $logfile
