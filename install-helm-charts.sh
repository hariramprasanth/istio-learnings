#! /bin/bash
helm install order-microservices demo-microservices
helm install customer-microservices demo-microservices --values=demo-microservices/customerValues.yaml