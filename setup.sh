#!/bin/sh

## create ns 1st
echo "Create a monitoring namespace"
kubectl create ns monitoring

kubectl create secret generic grafana-creds --from-env-file grafana-secrets.env -n monitoring

## prometheus directory
echo "1. Prometheus"
FOLDER=prometheus
for ext in cm crb cr pv-deployment svc node-exporter
do
  kubectl create -f $FOLDER/prometheus-$ext.yaml
done

## kube-state directory
echo "2. Kube-state"
FOLDER=kube-state
for ext in cr crb deployment sa svc
do
  kubectl create -f $FOLDER/kube-state-$ext.yaml
done

## grafana directory
echo "3. Grafana"
FOLDER=grafana
for ext in deployment svc
do
  kubectl create -f $FOLDER/grafana-$ext.yaml
done
