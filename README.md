# fun-with-ytt


This is an example of how to use ytt to template helm values files to simplify the installation of multiple helm charts. In this case we are installing prometheus and grafana. 

1) Install the carvel tool suite which includes ytt

* [Carvel](https://carvel.dev/)

2) Clone this repository into a directory

3) Run setup.sh to clone the prometheus and grafana helm charts into the directories. 

* [setup.sh](https://github.com/bmullan-pivotal/fun-with-ytt/blob/main/setup.sh)

4) If necessary apply any changes to the chart values files in the values directory.

* [values](https://github.com/bmullan-pivotal/fun-with-ytt/tree/main/values)

5) If necessary, create a registry pull secret used to access your image repository
```
kubectl create secret docker-registry pull-secret-name --docker-server=harbor.tanzu.be --docker-username=bmullan --docker-password=*** --docker-email=***
```

6) Customize the values.yml to set image repository, the registry pull secret and storage policy name.

* [values.yml](https://github.com/bmullan-pivotal/fun-with-ytt/blob/main/values.yml)

7) Run install-all.sh to install the helm charts using the templated values.

* [install-all.sh](https://github.com/bmullan-pivotal/fun-with-ytt/blob/main/install-all.sh)
