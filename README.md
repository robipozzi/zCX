# zCX Monitoring
- [Introduction](#introduction)
- [Setup and run the environment](#setup-and-run-the-environment)
- [Nginx](#nginx)
- [Grafana](#grafana)
- [Prometheus](#prometheus)
- [Cadvisor](#cadvisor)
- [Nodeexport](#nodeexport)
- [Portainer](#portainer)

## Introduction
This repository holds scripts to configure and run monitoring tools for containerized applications on zCX.

All the tools are configured to run behind a Reverse Proxy, implemented with Nginx (https://www.nginx.com/), which shields and concentrates the access to several applications, as seen in the architecture diagram below.

![](images/architecture.png)

Nginx runs as a container and is configured as a Reverse Proxy, with several *proxy_pass* directives that redirect to the following components running behind the proxy (see [Nginx](#nginx) paragraph for more details):
- [Grafana](#grafana)
- [Prometheus](#prometheus)
- [Cadvisor](#cadvisor)
- [Portainer](#portainer)

Nodeexporter does not have a relevant UI and for this reason runs in the backend and is not exposed through Nginx (see [Nodeexport](#nodeexport) paragraph for more details).

## Setup and run the environment
To setup and run the whole stack you need to go through the following steps in the right order: 
- [Create prerequisites](#create-prerequisites): this is to be done just the first time you setuo the environment
- [Build custom images](#build-custom-images): run this step whenever you need to make some change to the images
- [Run containers](#run-containers)

### Create prerequisites
Run **[setup.sh](setup.sh)** script to create the following prerequisites:

- 1 Docker Network **ingress_net**
- 1 Docker Network **monitoring_net**
- 1 Docker Volume **GRAFANA_DATA_VOLUME** used by Grafana container to persist its own data
- 1 Docker Volume **PROMETHEUS_DATA_VOLUME** used by Prometheus container to persist its own data
- 1 Docker Volume **PORTAINER_DATA_VOLUME** used by Portainer container to persist its own data

### Build custom images
For some component there is the need to build custom images:
        Nginx custom image
        Prometheus custom image
        Node Exporter custom image

**Build Nginx custom Docker image**

Change to *nginx* folder and run **[nginx-docker-build.sh](nginx/nginx-docker-build.sh)** script to build a custom Nginx image. The image is built using this **[Dockerfile](nginx/Dockerfile)**.

**Build Prometheus custom Docker image**

Change to *prometheus* folder and run **[prometheus-docker-build.sh](prometheus/prometheus-docker-build.sh)** script to build a custom Prometheus image. The image is built using this **[Dockerfile](prometheus/Dockerfile)**.

**Build Node Exporter custom Docker image**

Change to *nodeexporter* folder and run **[nodeexporter-docker-build.sh](nodeexporter/nodeexporter-docker-build.sh)** script to build a custom Node Exporter image. The image is built using this **[Dockerfile](nodeexporter/Dockerfile)**.

### Run containers
Execute **run.sh** script to start up all the components. The script delegates to other component specific scripts, ran in an ordered manner. 
      Once you have built these custom images, you can run the script that will start up the whole stack at once in the correct order, as can be seen below.

## Nginx
[TODO]

## Grafana
[TODO]

## Prometheus
[TODO]

## Cadvisor
[TODO]

## Nodeexport
[TODO]

## Portainer
[TODO]