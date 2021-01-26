docker rm -f grafana
CMD_RUN="docker run --name grafana --network ingress_net -d -v GRAFANA_DATA_VOLUME:/var/lib/grafana ibmcom/grafana:5.2.0-f3"
echo Running Grafana with: $CMD_RUN
$CMD_RUN