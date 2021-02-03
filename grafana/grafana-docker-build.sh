docker rmi -f grafana:7.0.5
CMD_RUN="docker build -t grafana:7.0.5 ."
echo Running Grafana image build with: $CMD_RUN
$CMD_RUN