docker rmi -f grafana:1.0
CMD_RUN="docker build -t grafana:1.0 ."
echo Running Grafana image build with: $CMD_RUN
$CMD_RUN