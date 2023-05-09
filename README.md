## install istio
curl -L https://istio.io/downloadIstio |  ISTIO_VERSION=1.14.6 TARGET_ARCH=x86_64 sh -


istioctl version --remote=false
istioctl install --set profile=demo -y

## install observebility tools
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.14/samples/addons/jaeger.yaml
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.14/samples/addons/prometheus.yaml
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.14/samples/addons/grafana.yaml
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.14/samples/addons/kiali.yaml

istioctl dashboard kiali  
istioctl dashboard jaeger

istioctl dashboard grafana
istioctl dashboard prometheus

## port forwarding the product page
kubectl port-forward service/productpage 9080:9080