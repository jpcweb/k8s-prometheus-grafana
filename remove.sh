#!/bin/sh

## prometheus directory
echo "1. Prometheus"
FOLDER=prometheus
for ext in cm crb cr pv-deployment svc node-exporter
do
  kubectl delete -f $FOLDER/prometheus-$ext.yaml
done

## kube-state directory
echo "2. Kube-start"
FOLDER=kube-state
for ext in crb cr sa deployment svc
do
  kubectl delete -f $FOLDER/kube-state-$ext.yaml
done

## grafana directory
echo "3. Grafana"
FOLDER=grafana
for ext in deployment svc
do
  kubectl delete -f $FOLDER/grafana-$ext.yaml
done

kubectl delete secret grafana-creds -n monitoring

echo "Remove the monitoring namespace"
kubectl delete ns monitoring
