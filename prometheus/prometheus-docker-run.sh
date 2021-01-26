docker rm -f prometheus
CMD_RUN="docker run --name prometheus --network monitoring_net -d -v PROMETHEUS_DATA_VOLUME:/prometheus prometheus:1.0 --config.file=/etc/prometheus/prometheus.yml --web.external-url=/prometheus"
echo Running Prometheus with: $CMD_RUN
$CMD_RUN

NETWORK_CONNECT_CMD_RUN="docker network connect ingress_net prometheus"
echo Attaching prometheus container to ingress_net network with: $NETWORK_CONNECT_CMD_RUN
$NETWORK_CONNECT_CMD_RUN