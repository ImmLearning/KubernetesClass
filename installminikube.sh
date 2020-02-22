#!/bin/sh
sudo apt-get update -y && upgrade;sudo apt-get install -y docker;sudo apt-get install -y apt-transport-https;sudo apt-get install -y virtualbox virtu
albox-ext-pack;curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -;sudo touch /etc/apt/sources.list.d/kubernetes.list;echo "deb http://apt.kube
rnetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list;sudo apt-get -y update && upgrade;sudo apt-get install -y kubectl;sudo apt-get -y upd
ate && upgrade;curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.28.2/minikube-linux-amd64;chmod +x minikube && sudo mv minikube /usr/local/bin/;minikube 
start;echo "completed successfully";
