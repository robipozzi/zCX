docker rm -f portainer
#CMD_RUN="docker run --name portainer --network monitoring_net -d -p 8000:8000 -p 9000:9000 --restart=always -v /var/run/docker.sock:/var/run/docker.sock:ro -v PORTAINER_DATA_VOLUME:/data portainer/portainer:linux-s390x-1.23.1"
CMD_RUN="docker run --name portainer --network monitoring_net -d --restart=always -v /var/run/docker.sock:/var/run/docker.sock:ro -v PORTAINER_DATA_VOLUME:/data portainer/portainer:linux-s390x-1.23.1"
echo Running Portainer with: $CMD_RUN
$CMD_RUN

NETWORK_CONNECT_CMD_RUN="docker network connect ingress_net portainer"
echo Attaching portainer container to ingress_net network with: $NETWORK_CONNECT_CMD_RUN
$NETWORK_CONNECT_CMD_RUN