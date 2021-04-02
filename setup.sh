#!/bin/bash

# create directories and clone the helm charts.
mkdir prometheus
git clone https://github.com/prometheus-community/helm-charts ./prometheus
helm dependency update ./prometheus/charts/prometheus
mkdir grafana
git clone https://github.com/grafana/helm-charts ./grafana
