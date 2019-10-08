# Łajamel

Łajamel is Polish YAML.

YAML = ŁAML = ŁAJAMEL = ŁML

## Run Łajamel WIKI definition server locally

```bash
docker run -p 2015:2015 -d mateuszdyminski/lajamel:latest
```

and open [http://localhost:2015/](http://localhost:2015/)

## Run Łajamel WIKI definition server on K8s

Łajamel server is expose from K8s with [Ingress](https://kubernetes.io/docs/concepts/services-networking/ingress/). To configure ingress on your cluster please change `all.sh` file and replace `BASE_DN` with proper value for you cluster.

```bash
BASE_DN=mateusz.dyminski.net # you domain goes here
sed "s/BASE_DN/$BASE_DN/g" all.łajamel > final.łajamel
kubectl apply -f final.łajamel
```
