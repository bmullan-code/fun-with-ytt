# fun-with-ytt


This is an example of how to use ytt to template helm values files to simplify the installation of multiple helm charts. In this case we are installing prometheus and grafana. 

1) Install the carvel tool suite which includes ytt

* [Carvel](https://carvel.dev/)

2) Clone this repository into a directory

3) Run setup.sh to clone the prometheus and grafana helm charts into the directories. 

4) If necessary apply any changes to the chart values files in the values directory.

5) Customize the values.yml to set image repository, the registry pull secret and storage policy name.

6) Run install-all.sh to install the helm charts using the templated values.

