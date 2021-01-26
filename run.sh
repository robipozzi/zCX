# Run Nodeexporter
source $PWD/nodeexporter/nodeexporter-docker-run.sh
# Run Cadvisor
source $PWD/cadvisor/cadvisor-docker-run.sh
# Run Prometheus
source $PWD/prometheus/prometheus-docker-run.sh
# Run Grafana
source $PWD/grafana/grafana-docker-run.sh
# Run Portainer
source $PWD/portainer/portainer-docker-run.sh
# Run NGINX Ingress controller
source $PWD/nginx/nginx-docker-run.sh