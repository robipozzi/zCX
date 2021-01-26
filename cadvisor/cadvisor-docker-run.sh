docker rm -f cadvisor
CMD_RUN="docker run --name cadvisor --network monitoring_net -d -v /:/rootfs:ro -v /var/run:/var/run:ro -v /sys:/sys:ro -v /var/lib/docker/:/var/lib/docker:ro -v /dev/disk/:/dev/disk:ro ibmcom/cadvisor-s390x:0.33.0"
echo Running Cadvisor with: $CMD_RUN
$CMD_RUN

NETWORK_CONNECT_CMD_RUN="docker network connect ingress_net cadvisor"
echo Attaching cadvisor container to ingress_net network with: $NETWORK_CONNECT_CMD_RUN
$NETWORK_CONNECT_CMD_RUN
