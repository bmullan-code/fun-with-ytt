#!/bin/bash

# kubectl create secret docker-registry harborpullsecret --docker-server=harbor.tanzu.be --docker-username=bmullan --docker-password= --docker-email=


#options="--dry-run"
options=

ytt -f values.yml -f ./values/prometheus-values.yml | \
    helm install prometheus $options ./prometheus/charts/prometheus -f -

ytt -f values.yml -f ./values/grafana-values.yml | \
    helm install grafana $options ./grafana/charts/grafana -f -