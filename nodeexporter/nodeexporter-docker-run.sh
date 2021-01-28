docker rm -f nodeexporter
CMD_RUN="docker run --name nodeexporter -d --network monitoring_net -p 9101:9100 -v /proc:/host/proc:ro -v /sys:/host/sys:ro -v /:/rootfs:ro -v /etc/hostname:/etc/host_hostname:ro nodeexporter:1.0"
## zCX new version
#CMD_RUN="docker run --name nodeexporter -d --network monitoring_net -p 9101:9100 -v /proc:/host/proc:ro -v /sys:/host/sys:ro -v /media:/rootfs/media:ro -v /etc/hostname:/etc/host_hostname:ro nodeexporter:1.0"
echo Running Nodeexporter with: $CMD_RUN
$CMD_RUN