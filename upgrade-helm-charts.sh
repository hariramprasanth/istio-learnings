#! /bin/bash
helm upgrade --install order-microservices demo-microservices/
helm upgrade --install customer-microservices demo-microservices/ --values=demo-microservices/customerValues.yaml