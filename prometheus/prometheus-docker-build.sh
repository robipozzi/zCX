docker rmi -f prometheus:1.0
CMD_RUN="docker build -t prometheus:1.0 ."
echo Running Prometheus image build with: $CMD_RUN
$CMD_RUN
