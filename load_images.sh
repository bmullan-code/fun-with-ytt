#!/bin/bash

repo=harbor.tanzu.be/bmullan

images=( 
    "grafana/grafana:7.5.2" 
    "bats/bats:v1.1.0" 
    "curlimages/curl:7.73.0" 
    "busybox:1.31.1" 
    "quay.io/kiwigrid/k8s-sidecar:1.10.7" 
    "grafana/grafana-image-renderer:latest" 
)

push_images=(
    "${repo}/grafana/grafana:7.5.2" 
    "${repo}/bats/bats:v1.1.0" 
    "${repo}/curlimages/curl:7.73.0" 
    "${repo}/busybox:1.31.1" 
    "${repo}/kiwigrid/k8s-sidecar:1.10.7" 
    "${repo}/grafana/grafana-image-renderer:latest")

# pull the images
for i in "${images[@]}"
do
    echo $i
    docker pull $i  
done

# get the id's and tag
for i in "${!images[@]}";
do
    echo $i
    id=$(docker images ${images[$i]} --format "{{.ID}}")
    echo "id=" $id
    docker tag $id ${push_images[$i]}
done

# push the images
for i in "${push_images[@]}"
do
    echo $i
    docker push $i
done

