docker rm -f grafana
CMD_RUN="docker run --name grafana --network ingress_net -d -v GRAFANA_DATA_VOLUME:/var/lib/grafana ibmcom/grafana:5.2.0-f3"
#CMD_RUN="docker run --name grafana --network ingress_net -d -v GRAFANA705_DATA_VOLUME:/var/lib/grafana grafana:7.0.5"
echo Running Grafana with: $CMD_RUN
$CMD_RUN

NETWORK_CONNECT_CMD_RUN="docker network connect monitoring_net grafana"
echo Attaching grafana container to monitoring_net network with: $NETWORK_CONNECT_CMD_RUN
$NETWORK_CONNECT_CMD_RUN