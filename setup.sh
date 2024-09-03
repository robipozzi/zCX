echo Creating Networks
docker network create ingress_net
docker network create monitoring_net
echo Creating Volumes
docker volume create GRAFANA_DATA_VOLUME
docker volume create PROMETHEUS_DATA_VOLUME
docker volume create PORTAINER_DATA_VOLUME